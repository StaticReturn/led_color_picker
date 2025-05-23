import 'dart:async';
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:led_color_picker/generated/keymapp.pbgrpc.dart';


const String kontrollVersion = '1.0.0';


/// The Kontroll API error
class ApiError implements Exception {
  ApiError(this.message);
  final String message;

  @override
  String toString() => message;
}

/// Data representation of a connected keyboard, used in the status response
class ConnectedKeyboard {
  ConnectedKeyboard({required this.friendlyName, required this.firmwareVersion, required this.currentLayer});
  final String friendlyName;
  final String firmwareVersion;
  final int currentLayer;

  Map<String, dynamic> toJson() => {
    'friendly_name': friendlyName,
    'firmware_version': firmwareVersion,
    'current_layer': currentLayer,
  };
}

/// Data representation of the status response, including the version of Kontroll and Keymapp and optionally the connected keyboard.
class Status {
  Status({required this.keymappVersion, required this.kontrollVersion, this.keyboard});
  final String keymappVersion;
  final String kontrollVersion;
  final ConnectedKeyboard? keyboard;

  Map<String, dynamic> toJson() => {
    'keymapp_version': keymappVersion,
    'kontroll_version': kontrollVersion,
    'keyboard': keyboard?.toJson(),
  };

  @override
  String toString() {
    final keyboardInfo = keyboard != null
      ? 'Connected keyboard:\t${keyboard!.friendlyName}\n'
        'Firmware version:\t${keyboard!.firmwareVersion}\n'
        'Current layer:\t\t${keyboard!.currentLayer}'
      : 'No keyboard connected';
    
    return 'Keymapp version:\t$keymappVersion\n'
      'Kontroll version:\t$kontrollVersion\n'
      '$keyboardInfo\n';
  }
}

/// Get client function for creating a KeyboardServiceClient
Future<KeyboardServiceClient> getClient(String? port) async {
  // Get port number from the supplied path provided, or environment variable or set a default
  final String resolvedPort = port ?? Platform.environment['KEYMAPP_PORT'] ?? '50051';
  
  try {
    final ClientChannel channel = ClientChannel(
      'localhost',
      port: int.parse(resolvedPort),
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    
    return KeyboardServiceClient(channel);
  } catch (e) {
    throw ApiError('Connection to Keymapp failed, with error $e');
  }
}

/// The kontroll API.
class Kontroll {
  Kontroll._(this._client);
  final KeyboardServiceClient _client;
  
  /// Create a new Kontroll instance, connecting to Keymapp, optionally specifying a port number.
  static Future<Kontroll> create({String? port}) async {
    final KeyboardServiceClient client = await getClient(port);
    return Kontroll._(client);
  }
  
  /// Gets Keymapp's version, Kontroll's version and the connected keyboard's information.
  Future<Status> getStatus() async {
    try {
      final request = GetStatusRequest();
      final response = await _client.getStatus(request);
      
      ConnectedKeyboard? keyboard;
      if (response.hasConnectedKeyboard()) {
        keyboard = ConnectedKeyboard(
          friendlyName: response.connectedKeyboard.friendlyName,
          firmwareVersion: response.connectedKeyboard.firmwareVersion,
          currentLayer: response.connectedKeyboard.currentLayer,
        );
      }
      
      return Status(
        keymappVersion: response.keymappVersion,
        kontrollVersion: kontrollVersion,
        keyboard: keyboard,
      );
    } catch (e) {
      throw ApiError('Failed to get status: $e');
    }
  }
  
  /// Gets a list of available keyboards.
  Future<List<Keyboard>> listKeyboards() async {
    try {
      final GetKeyboardsRequest request = GetKeyboardsRequest();
      final GetKeyboardsReply response = await _client.getKeyboards(request);
      return response.keyboards;
    } catch (e) {
      throw ApiError('Failed to get keyboards: $e');
    }
  }
  
  /// Connects to a keyboard by index.
  Future<bool> connect(int index) async {
    try {
      final ConnectKeyboardRequest request = ConnectKeyboardRequest()..id = index;
      final ConnectKeyboardReply response = await _client.connectKeyboard(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to connect: $e');
    }
  }
  
  /// Connects to the first entry in the list of available keyboards.
  Future<bool> connectAny() async {
    try {
      final ConnectAnyKeyboardRequest request = ConnectAnyKeyboardRequest();
      final ConnectKeyboardReply response = await _client.connectAnyKeyboard(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to connect: $e');
    }
  }
  
  /// Sets a layer by index on the connected keyboard.
  Future<bool> setLayer(int index) async {
    try {
      final SetLayerRequest request = SetLayerRequest()..layer = index;
      final SetLayerReply response = await _client.setLayer(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to set layer: $e');
    }
  }
  
  /// Sets an RGB LED by index on the connected keyboard.
  Future<bool> setRgbLed(int index, int r, int g, int b, int sustain) async {
    try {
      final SetRGBLedRequest request = SetRGBLedRequest()
        ..led = index
        ..red = r
        ..green = g
        ..blue = b
        ..sustain = sustain;
      
      final SetRGBLedReply response = await _client.setRGBLed(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to set rgb: $e');
    }
  }
  
  /// Sets all RGB LEDs on the connected keyboard.
  Future<bool> setRgbAll(int r, int g, int b, int sustain) async {
    try {
      final SetRGBAllRequest request = SetRGBAllRequest()
        ..red = r
        ..green = g
        ..blue = b
        ..sustain = sustain;
      
      final SetRGBAllReply response = await _client.setRGBAll(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to set all rgb: $e');
    }
  }
  
  /// Restores all RGB LEDs on the connected keyboard.
  Future<bool> restoreRgbLeds() async {
    return setRgbAll(0, 0, 0, 1);
  }
  
  /// Sets a status LED by index on the connected keyboard.
  Future<bool> setStatusLed(int led, bool on, int sustain) async {
    try {
      final SetStatusLedRequest request = SetStatusLedRequest()
        ..led = led
        ..on = on
        ..sustain = sustain;
      
      final SetStatusLedReply response = await _client.setStatusLed(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to set status led: $e');
    }
  }
  
  /// Restores all status LEDs on the connected keyboard.
  Future<bool> restoreStatusLeds() async {
    return setStatusLed(0, false, 1);
  }
  
  /// Sets the brightness of the connected keyboard. Several steps can be taken.
  Future<bool> updateBrightness(bool increase, int steps) async {
    if (steps < 1 || steps > 255) {
      throw ApiError('Brightness steps must be between 1 and 255');
    }
    
    bool result = false;
    
    try {
      if (increase) {
        for (int i = 0; i < steps; i++) {
          final IncreaseBrightnessRequest request = IncreaseBrightnessRequest();
          final BrightnessUpdateReply response = await _client.increaseBrightness(request);
          result = response.success;
          if (!result) break;
        }
      } else {
        for (int i = 0; i < steps; i++) {
          final DecreaseBrightnessRequest request = DecreaseBrightnessRequest();
          final BrightnessUpdateReply response = await _client.decreaseBrightness(request);
          result = response.success;
          if (!result) break;
        }
      }
      
      return result;
    } catch (e) {
      throw ApiError('Failed to update brightness: $e');
    }
  }
  
  /// Disconnects the connected keyboard.
  Future<bool> disconnect() async {
    try {
      final DisconnectKeyboardRequest request = DisconnectKeyboardRequest();
      final DisconnectKeyboardReply response = await _client.disconnectKeyboard(request);
      return response.success;
    } catch (e) {
      throw ApiError('Failed to disconnect: $e');
    }
  }
}