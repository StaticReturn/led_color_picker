//
//  Generated code. Do not modify.
//  source: keymapp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'keymapp.pb.dart' as $0;

export 'keymapp.pb.dart';

@$pb.GrpcServiceName('api.KeyboardService')
class KeyboardServiceClient extends $grpc.Client {
  static final _$getStatus = $grpc.ClientMethod<$0.GetStatusRequest, $0.GetStatusReply>(
      '/api.KeyboardService/GetStatus',
      ($0.GetStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStatusReply.fromBuffer(value));
  static final _$getKeyboards = $grpc.ClientMethod<$0.GetKeyboardsRequest, $0.GetKeyboardsReply>(
      '/api.KeyboardService/GetKeyboards',
      ($0.GetKeyboardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKeyboardsReply.fromBuffer(value));
  static final _$connectKeyboard = $grpc.ClientMethod<$0.ConnectKeyboardRequest, $0.ConnectKeyboardReply>(
      '/api.KeyboardService/ConnectKeyboard',
      ($0.ConnectKeyboardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConnectKeyboardReply.fromBuffer(value));
  static final _$connectAnyKeyboard = $grpc.ClientMethod<$0.ConnectAnyKeyboardRequest, $0.ConnectKeyboardReply>(
      '/api.KeyboardService/ConnectAnyKeyboard',
      ($0.ConnectAnyKeyboardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConnectKeyboardReply.fromBuffer(value));
  static final _$disconnectKeyboard = $grpc.ClientMethod<$0.DisconnectKeyboardRequest, $0.DisconnectKeyboardReply>(
      '/api.KeyboardService/DisconnectKeyboard',
      ($0.DisconnectKeyboardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DisconnectKeyboardReply.fromBuffer(value));
  static final _$setLayer = $grpc.ClientMethod<$0.SetLayerRequest, $0.SetLayerReply>(
      '/api.KeyboardService/SetLayer',
      ($0.SetLayerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetLayerReply.fromBuffer(value));
  static final _$unsetLayer = $grpc.ClientMethod<$0.SetLayerRequest, $0.SetLayerReply>(
      '/api.KeyboardService/UnsetLayer',
      ($0.SetLayerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetLayerReply.fromBuffer(value));
  static final _$setRGBLed = $grpc.ClientMethod<$0.SetRGBLedRequest, $0.SetRGBLedReply>(
      '/api.KeyboardService/SetRGBLed',
      ($0.SetRGBLedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetRGBLedReply.fromBuffer(value));
  static final _$setRGBAll = $grpc.ClientMethod<$0.SetRGBAllRequest, $0.SetRGBAllReply>(
      '/api.KeyboardService/SetRGBAll',
      ($0.SetRGBAllRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetRGBAllReply.fromBuffer(value));
  static final _$setStatusLed = $grpc.ClientMethod<$0.SetStatusLedRequest, $0.SetStatusLedReply>(
      '/api.KeyboardService/SetStatusLed',
      ($0.SetStatusLedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetStatusLedReply.fromBuffer(value));
  static final _$increaseBrightness = $grpc.ClientMethod<$0.IncreaseBrightnessRequest, $0.BrightnessUpdateReply>(
      '/api.KeyboardService/IncreaseBrightness',
      ($0.IncreaseBrightnessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BrightnessUpdateReply.fromBuffer(value));
  static final _$decreaseBrightness = $grpc.ClientMethod<$0.DecreaseBrightnessRequest, $0.BrightnessUpdateReply>(
      '/api.KeyboardService/DecreaseBrightness',
      ($0.DecreaseBrightnessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BrightnessUpdateReply.fromBuffer(value));

  KeyboardServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetStatusReply> getStatus($0.GetStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKeyboardsReply> getKeyboards($0.GetKeyboardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKeyboards, request, options: options);
  }

  $grpc.ResponseFuture<$0.ConnectKeyboardReply> connectKeyboard($0.ConnectKeyboardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.ConnectKeyboardReply> connectAnyKeyboard($0.ConnectAnyKeyboardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectAnyKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.DisconnectKeyboardReply> disconnectKeyboard($0.DisconnectKeyboardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disconnectKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetLayerReply> setLayer($0.SetLayerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLayer, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetLayerReply> unsetLayer($0.SetLayerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsetLayer, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetRGBLedReply> setRGBLed($0.SetRGBLedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRGBLed, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetRGBAllReply> setRGBAll($0.SetRGBAllRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRGBAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetStatusLedReply> setStatusLed($0.SetStatusLedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setStatusLed, request, options: options);
  }

  $grpc.ResponseFuture<$0.BrightnessUpdateReply> increaseBrightness($0.IncreaseBrightnessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$increaseBrightness, request, options: options);
  }

  $grpc.ResponseFuture<$0.BrightnessUpdateReply> decreaseBrightness($0.DecreaseBrightnessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decreaseBrightness, request, options: options);
  }
}

@$pb.GrpcServiceName('api.KeyboardService')
abstract class KeyboardServiceBase extends $grpc.Service {
  $core.String get $name => 'api.KeyboardService';

  KeyboardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetStatusRequest, $0.GetStatusReply>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStatusRequest.fromBuffer(value),
        ($0.GetStatusReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKeyboardsRequest, $0.GetKeyboardsReply>(
        'GetKeyboards',
        getKeyboards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKeyboardsRequest.fromBuffer(value),
        ($0.GetKeyboardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConnectKeyboardRequest, $0.ConnectKeyboardReply>(
        'ConnectKeyboard',
        connectKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConnectKeyboardRequest.fromBuffer(value),
        ($0.ConnectKeyboardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConnectAnyKeyboardRequest, $0.ConnectKeyboardReply>(
        'ConnectAnyKeyboard',
        connectAnyKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConnectAnyKeyboardRequest.fromBuffer(value),
        ($0.ConnectKeyboardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DisconnectKeyboardRequest, $0.DisconnectKeyboardReply>(
        'DisconnectKeyboard',
        disconnectKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DisconnectKeyboardRequest.fromBuffer(value),
        ($0.DisconnectKeyboardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetLayerRequest, $0.SetLayerReply>(
        'SetLayer',
        setLayer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetLayerRequest.fromBuffer(value),
        ($0.SetLayerReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetLayerRequest, $0.SetLayerReply>(
        'UnsetLayer',
        unsetLayer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetLayerRequest.fromBuffer(value),
        ($0.SetLayerReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRGBLedRequest, $0.SetRGBLedReply>(
        'SetRGBLed',
        setRGBLed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRGBLedRequest.fromBuffer(value),
        ($0.SetRGBLedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRGBAllRequest, $0.SetRGBAllReply>(
        'SetRGBAll',
        setRGBAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRGBAllRequest.fromBuffer(value),
        ($0.SetRGBAllReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetStatusLedRequest, $0.SetStatusLedReply>(
        'SetStatusLed',
        setStatusLed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetStatusLedRequest.fromBuffer(value),
        ($0.SetStatusLedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IncreaseBrightnessRequest, $0.BrightnessUpdateReply>(
        'IncreaseBrightness',
        increaseBrightness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IncreaseBrightnessRequest.fromBuffer(value),
        ($0.BrightnessUpdateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DecreaseBrightnessRequest, $0.BrightnessUpdateReply>(
        'DecreaseBrightness',
        decreaseBrightness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DecreaseBrightnessRequest.fromBuffer(value),
        ($0.BrightnessUpdateReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetStatusReply> getStatus_Pre($grpc.ServiceCall $call, $async.Future<$0.GetStatusRequest> $request) async {
    return getStatus($call, await $request);
  }

  $async.Future<$0.GetKeyboardsReply> getKeyboards_Pre($grpc.ServiceCall $call, $async.Future<$0.GetKeyboardsRequest> $request) async {
    return getKeyboards($call, await $request);
  }

  $async.Future<$0.ConnectKeyboardReply> connectKeyboard_Pre($grpc.ServiceCall $call, $async.Future<$0.ConnectKeyboardRequest> $request) async {
    return connectKeyboard($call, await $request);
  }

  $async.Future<$0.ConnectKeyboardReply> connectAnyKeyboard_Pre($grpc.ServiceCall $call, $async.Future<$0.ConnectAnyKeyboardRequest> $request) async {
    return connectAnyKeyboard($call, await $request);
  }

  $async.Future<$0.DisconnectKeyboardReply> disconnectKeyboard_Pre($grpc.ServiceCall $call, $async.Future<$0.DisconnectKeyboardRequest> $request) async {
    return disconnectKeyboard($call, await $request);
  }

  $async.Future<$0.SetLayerReply> setLayer_Pre($grpc.ServiceCall $call, $async.Future<$0.SetLayerRequest> $request) async {
    return setLayer($call, await $request);
  }

  $async.Future<$0.SetLayerReply> unsetLayer_Pre($grpc.ServiceCall $call, $async.Future<$0.SetLayerRequest> $request) async {
    return unsetLayer($call, await $request);
  }

  $async.Future<$0.SetRGBLedReply> setRGBLed_Pre($grpc.ServiceCall $call, $async.Future<$0.SetRGBLedRequest> $request) async {
    return setRGBLed($call, await $request);
  }

  $async.Future<$0.SetRGBAllReply> setRGBAll_Pre($grpc.ServiceCall $call, $async.Future<$0.SetRGBAllRequest> $request) async {
    return setRGBAll($call, await $request);
  }

  $async.Future<$0.SetStatusLedReply> setStatusLed_Pre($grpc.ServiceCall $call, $async.Future<$0.SetStatusLedRequest> $request) async {
    return setStatusLed($call, await $request);
  }

  $async.Future<$0.BrightnessUpdateReply> increaseBrightness_Pre($grpc.ServiceCall $call, $async.Future<$0.IncreaseBrightnessRequest> $request) async {
    return increaseBrightness($call, await $request);
  }

  $async.Future<$0.BrightnessUpdateReply> decreaseBrightness_Pre($grpc.ServiceCall $call, $async.Future<$0.DecreaseBrightnessRequest> $request) async {
    return decreaseBrightness($call, await $request);
  }

  $async.Future<$0.GetStatusReply> getStatus($grpc.ServiceCall call, $0.GetStatusRequest request);
  $async.Future<$0.GetKeyboardsReply> getKeyboards($grpc.ServiceCall call, $0.GetKeyboardsRequest request);
  $async.Future<$0.ConnectKeyboardReply> connectKeyboard($grpc.ServiceCall call, $0.ConnectKeyboardRequest request);
  $async.Future<$0.ConnectKeyboardReply> connectAnyKeyboard($grpc.ServiceCall call, $0.ConnectAnyKeyboardRequest request);
  $async.Future<$0.DisconnectKeyboardReply> disconnectKeyboard($grpc.ServiceCall call, $0.DisconnectKeyboardRequest request);
  $async.Future<$0.SetLayerReply> setLayer($grpc.ServiceCall call, $0.SetLayerRequest request);
  $async.Future<$0.SetLayerReply> unsetLayer($grpc.ServiceCall call, $0.SetLayerRequest request);
  $async.Future<$0.SetRGBLedReply> setRGBLed($grpc.ServiceCall call, $0.SetRGBLedRequest request);
  $async.Future<$0.SetRGBAllReply> setRGBAll($grpc.ServiceCall call, $0.SetRGBAllRequest request);
  $async.Future<$0.SetStatusLedReply> setStatusLed($grpc.ServiceCall call, $0.SetStatusLedRequest request);
  $async.Future<$0.BrightnessUpdateReply> increaseBrightness($grpc.ServiceCall call, $0.IncreaseBrightnessRequest request);
  $async.Future<$0.BrightnessUpdateReply> decreaseBrightness($grpc.ServiceCall call, $0.DecreaseBrightnessRequest request);
}
