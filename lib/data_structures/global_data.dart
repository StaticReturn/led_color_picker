import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/communicate/api.dart';
import 'package:led_color_picker/generated/keymapp.pb.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';


late final GlobalData data;  // Must be initialize quickly.

class GlobalData {
  GlobalData({required this.kontroll, required this.sharedPreferences, required this.packageInfo});
  Kontroll kontroll;
  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;
  final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  final ValueNotifier<String> message = ValueNotifier<String>('');
  final TextStyle textStyle = TextStyle(fontSize: 18.0, color: catppuccin.mocha.text);
  final TextStyle textStyleSmall = TextStyle(fontSize: 12.0, color: catppuccin.mocha.text);
  final TextStyle buttonStyle = TextStyle(color: catppuccin.mocha.text);
  final TextStyle dialogAction = TextStyle(color: catppuccin.mocha.lavender);
  final ValueNotifier<Color> pickerColor = ValueNotifier<Color>(Color(0xFF443a49));
  final ValueNotifier<bool> keyappConnected = ValueNotifier<bool>(false);
  final ValueNotifier<bool> keyBoardConnected = ValueNotifier<bool>(false);
  final ValueNotifier<String> port = ValueNotifier<String>("50051");
  final List<Keyboard> keyboards = [];
  Status status = Status(keymappVersion:  '', kontrollVersion: '');
  String keyboard = "Keyboard";
  int messageAge = 0;
  String staleMessage = "";


  bool newConnectionLock = false;
  creatNewConnection(String port) async {
    if (newConnectionLock)    return;
    newConnectionLock = true;
    kontroll = await Kontroll.create(port: port);
    testConnection();
    newConnectionLock = false;
  }

  bool testConnectionLock = false;
  testConnection() async {
    bool everFailed = false;

    while (true) {      
      try {
        status = await kontroll.getStatus();
        if (message.value == "Reconnected to Keyapp.") {
          message.value = "";
        } else if (keyappConnected.value == false && everFailed) {
          message.value = "Reconnected to Keyapp.";
        }
        keyappConnected.value = true;

        if (status.keyboard == null) {
          keyBoardConnected.value = false;
        } else {
          keyboard = status.keyboard!.friendlyName;
          keyBoardConnected.value = true;
        }
      } on ApiError {
        message.value = noKeymappConnection;
        keyappConnected.value = false;
        everFailed = true;
      } catch (e) {
        message.value = e.toString();
        keyappConnected.value = false;
        everFailed = true;
      }
      _checkForStaleMessages();
      if (newConnectionLock) {
        return;
      }
      await Future.delayed(const Duration(seconds: 5));
    }
  }

  bool staleMessageLock = false;
  _checkForStaleMessages() {
    if (staleMessageLock)   return;
    staleMessageLock = true;

    if (message.value.isEmpty) {
      staleMessage = "";
      messageAge = 0;
      return;
    }

    if (messageAge >= 3 && message.value != noKeymappConnection) {
      staleMessage = message.value;
      message.value = "";
      messageAge = 0;
      return;
    }
    if (message.value == staleMessage) {
      messageAge++;
    }
    staleMessage = message.value;
    staleMessageLock = false;
  }

  bool getKeyboardsLock = false;
  getKeyboards() async {
    if (getKeyboardsLock)   return;
    getKeyboardsLock = true;

    try {
      keyboards.clear();
      keyboards.addAll(await kontroll.listKeyboards());
      keyboard = keyboards.first.friendlyName;
      keyBoardConnected.value = true;
    } on ApiError {
      if (message.value != noKeymappConnection) {
        message.value = "Failed to get list of connected keyboards.";
      }      
      keyBoardConnected.value = false;
    } catch (e) {
      if (message.value != noKeymappConnection) {
        message.value = e.toString();
      }      
      keyBoardConnected.value = false;
    }

    getKeyboardsLock = false;
  }

  bool connectToKeyboardLock = false;
  Future<bool> connectToKeyboard(int index) async {
    if (connectToKeyboardLock)    return false;
    connectToKeyboardLock = true;

    bool result = false;

    try {
      result = await kontroll.connect(index);
      keyboard = keyboards.first.friendlyName;
      keyBoardConnected.value = true;
      connectToKeyboardLock = false;
      return true;
    } catch (e) {
      final String error = e.toString();

      if (error.contains("already connected")) {
        connectToKeyboardLock = false;
        return true;
      } else if (error.contains("not found")) {
        message.value = "Keyboard $index not found.";
      } else {
        message.value = e.toString();
      }
      keyBoardConnected.value = false;
    }

    connectToKeyboardLock = false;
    return result;
  }
}

const String noKeymappConnection = "Failed to get Keyapp status.  Make sure that Keymapp is running and the connection port is correct.";