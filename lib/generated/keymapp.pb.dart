//
//  Generated code. Do not modify.
//  source: keymapp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Keyboard extends $pb.GeneratedMessage {
  factory Keyboard({
    $core.int? id,
    $core.String? friendlyName,
    $core.bool? isConnected,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (friendlyName != null) {
      $result.friendlyName = friendlyName;
    }
    if (isConnected != null) {
      $result.isConnected = isConnected;
    }
    return $result;
  }
  Keyboard._() : super();
  factory Keyboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Keyboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Keyboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'friendlyName')
    ..aOB(3, _omitFieldNames ? '' : 'isConnected')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Keyboard clone() => Keyboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Keyboard copyWith(void Function(Keyboard) updates) => super.copyWith((message) => updates(message as Keyboard)) as Keyboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Keyboard create() => Keyboard._();
  Keyboard createEmptyInstance() => create();
  static $pb.PbList<Keyboard> createRepeated() => $pb.PbList<Keyboard>();
  @$core.pragma('dart2js:noInline')
  static Keyboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Keyboard>(create);
  static Keyboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get friendlyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set friendlyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFriendlyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFriendlyName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isConnected => $_getBF(2);
  @$pb.TagNumber(3)
  set isConnected($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsConnected() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsConnected() => $_clearField(3);
}

class ConnectedKeyboard extends $pb.GeneratedMessage {
  factory ConnectedKeyboard({
    $core.String? friendlyName,
    $core.String? firmwareVersion,
    $core.int? currentLayer,
  }) {
    final $result = create();
    if (friendlyName != null) {
      $result.friendlyName = friendlyName;
    }
    if (firmwareVersion != null) {
      $result.firmwareVersion = firmwareVersion;
    }
    if (currentLayer != null) {
      $result.currentLayer = currentLayer;
    }
    return $result;
  }
  ConnectedKeyboard._() : super();
  factory ConnectedKeyboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectedKeyboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectedKeyboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'friendlyName')
    ..aOS(2, _omitFieldNames ? '' : 'firmwareVersion')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentLayer', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectedKeyboard clone() => ConnectedKeyboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectedKeyboard copyWith(void Function(ConnectedKeyboard) updates) => super.copyWith((message) => updates(message as ConnectedKeyboard)) as ConnectedKeyboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectedKeyboard create() => ConnectedKeyboard._();
  ConnectedKeyboard createEmptyInstance() => create();
  static $pb.PbList<ConnectedKeyboard> createRepeated() => $pb.PbList<ConnectedKeyboard>();
  @$core.pragma('dart2js:noInline')
  static ConnectedKeyboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectedKeyboard>(create);
  static ConnectedKeyboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get friendlyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set friendlyName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriendlyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriendlyName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get firmwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set firmwareVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirmwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentLayer => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentLayer($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentLayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentLayer() => $_clearField(3);
}

class GetStatusRequest extends $pb.GeneratedMessage {
  factory GetStatusRequest() => create();
  GetStatusRequest._() : super();
  factory GetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusRequest clone() => GetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusRequest copyWith(void Function(GetStatusRequest) updates) => super.copyWith((message) => updates(message as GetStatusRequest)) as GetStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStatusRequest create() => GetStatusRequest._();
  GetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetStatusRequest> createRepeated() => $pb.PbList<GetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusRequest>(create);
  static GetStatusRequest? _defaultInstance;
}

class GetStatusReply extends $pb.GeneratedMessage {
  factory GetStatusReply({
    $core.String? keymappVersion,
    ConnectedKeyboard? connectedKeyboard,
  }) {
    final $result = create();
    if (keymappVersion != null) {
      $result.keymappVersion = keymappVersion;
    }
    if (connectedKeyboard != null) {
      $result.connectedKeyboard = connectedKeyboard;
    }
    return $result;
  }
  GetStatusReply._() : super();
  factory GetStatusReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStatusReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keymappVersion')
    ..aOM<ConnectedKeyboard>(2, _omitFieldNames ? '' : 'connectedKeyboard', subBuilder: ConnectedKeyboard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusReply clone() => GetStatusReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusReply copyWith(void Function(GetStatusReply) updates) => super.copyWith((message) => updates(message as GetStatusReply)) as GetStatusReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStatusReply create() => GetStatusReply._();
  GetStatusReply createEmptyInstance() => create();
  static $pb.PbList<GetStatusReply> createRepeated() => $pb.PbList<GetStatusReply>();
  @$core.pragma('dart2js:noInline')
  static GetStatusReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusReply>(create);
  static GetStatusReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keymappVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set keymappVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeymappVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeymappVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ConnectedKeyboard get connectedKeyboard => $_getN(1);
  @$pb.TagNumber(2)
  set connectedKeyboard(ConnectedKeyboard v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedKeyboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedKeyboard() => $_clearField(2);
  @$pb.TagNumber(2)
  ConnectedKeyboard ensureConnectedKeyboard() => $_ensure(1);
}

class GetKeyboardsRequest extends $pb.GeneratedMessage {
  factory GetKeyboardsRequest() => create();
  GetKeyboardsRequest._() : super();
  factory GetKeyboardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKeyboardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKeyboardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKeyboardsRequest clone() => GetKeyboardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKeyboardsRequest copyWith(void Function(GetKeyboardsRequest) updates) => super.copyWith((message) => updates(message as GetKeyboardsRequest)) as GetKeyboardsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKeyboardsRequest create() => GetKeyboardsRequest._();
  GetKeyboardsRequest createEmptyInstance() => create();
  static $pb.PbList<GetKeyboardsRequest> createRepeated() => $pb.PbList<GetKeyboardsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetKeyboardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKeyboardsRequest>(create);
  static GetKeyboardsRequest? _defaultInstance;
}

class GetKeyboardsReply extends $pb.GeneratedMessage {
  factory GetKeyboardsReply({
    $core.Iterable<Keyboard>? keyboards,
  }) {
    final $result = create();
    if (keyboards != null) {
      $result.keyboards.addAll(keyboards);
    }
    return $result;
  }
  GetKeyboardsReply._() : super();
  factory GetKeyboardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKeyboardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKeyboardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..pc<Keyboard>(1, _omitFieldNames ? '' : 'keyboards', $pb.PbFieldType.PM, subBuilder: Keyboard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKeyboardsReply clone() => GetKeyboardsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKeyboardsReply copyWith(void Function(GetKeyboardsReply) updates) => super.copyWith((message) => updates(message as GetKeyboardsReply)) as GetKeyboardsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKeyboardsReply create() => GetKeyboardsReply._();
  GetKeyboardsReply createEmptyInstance() => create();
  static $pb.PbList<GetKeyboardsReply> createRepeated() => $pb.PbList<GetKeyboardsReply>();
  @$core.pragma('dart2js:noInline')
  static GetKeyboardsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKeyboardsReply>(create);
  static GetKeyboardsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Keyboard> get keyboards => $_getList(0);
}

class ConnectAnyKeyboardRequest extends $pb.GeneratedMessage {
  factory ConnectAnyKeyboardRequest() => create();
  ConnectAnyKeyboardRequest._() : super();
  factory ConnectAnyKeyboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectAnyKeyboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectAnyKeyboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectAnyKeyboardRequest clone() => ConnectAnyKeyboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectAnyKeyboardRequest copyWith(void Function(ConnectAnyKeyboardRequest) updates) => super.copyWith((message) => updates(message as ConnectAnyKeyboardRequest)) as ConnectAnyKeyboardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectAnyKeyboardRequest create() => ConnectAnyKeyboardRequest._();
  ConnectAnyKeyboardRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectAnyKeyboardRequest> createRepeated() => $pb.PbList<ConnectAnyKeyboardRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectAnyKeyboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectAnyKeyboardRequest>(create);
  static ConnectAnyKeyboardRequest? _defaultInstance;
}

class ConnectKeyboardRequest extends $pb.GeneratedMessage {
  factory ConnectKeyboardRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ConnectKeyboardRequest._() : super();
  factory ConnectKeyboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectKeyboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectKeyboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectKeyboardRequest clone() => ConnectKeyboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectKeyboardRequest copyWith(void Function(ConnectKeyboardRequest) updates) => super.copyWith((message) => updates(message as ConnectKeyboardRequest)) as ConnectKeyboardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectKeyboardRequest create() => ConnectKeyboardRequest._();
  ConnectKeyboardRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectKeyboardRequest> createRepeated() => $pb.PbList<ConnectKeyboardRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectKeyboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectKeyboardRequest>(create);
  static ConnectKeyboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ConnectKeyboardReply extends $pb.GeneratedMessage {
  factory ConnectKeyboardReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  ConnectKeyboardReply._() : super();
  factory ConnectKeyboardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectKeyboardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectKeyboardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectKeyboardReply clone() => ConnectKeyboardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectKeyboardReply copyWith(void Function(ConnectKeyboardReply) updates) => super.copyWith((message) => updates(message as ConnectKeyboardReply)) as ConnectKeyboardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectKeyboardReply create() => ConnectKeyboardReply._();
  ConnectKeyboardReply createEmptyInstance() => create();
  static $pb.PbList<ConnectKeyboardReply> createRepeated() => $pb.PbList<ConnectKeyboardReply>();
  @$core.pragma('dart2js:noInline')
  static ConnectKeyboardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectKeyboardReply>(create);
  static ConnectKeyboardReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class DisconnectKeyboardRequest extends $pb.GeneratedMessage {
  factory DisconnectKeyboardRequest() => create();
  DisconnectKeyboardRequest._() : super();
  factory DisconnectKeyboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectKeyboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisconnectKeyboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectKeyboardRequest clone() => DisconnectKeyboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectKeyboardRequest copyWith(void Function(DisconnectKeyboardRequest) updates) => super.copyWith((message) => updates(message as DisconnectKeyboardRequest)) as DisconnectKeyboardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisconnectKeyboardRequest create() => DisconnectKeyboardRequest._();
  DisconnectKeyboardRequest createEmptyInstance() => create();
  static $pb.PbList<DisconnectKeyboardRequest> createRepeated() => $pb.PbList<DisconnectKeyboardRequest>();
  @$core.pragma('dart2js:noInline')
  static DisconnectKeyboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectKeyboardRequest>(create);
  static DisconnectKeyboardRequest? _defaultInstance;
}

class DisconnectKeyboardReply extends $pb.GeneratedMessage {
  factory DisconnectKeyboardReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DisconnectKeyboardReply._() : super();
  factory DisconnectKeyboardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectKeyboardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisconnectKeyboardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectKeyboardReply clone() => DisconnectKeyboardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectKeyboardReply copyWith(void Function(DisconnectKeyboardReply) updates) => super.copyWith((message) => updates(message as DisconnectKeyboardReply)) as DisconnectKeyboardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisconnectKeyboardReply create() => DisconnectKeyboardReply._();
  DisconnectKeyboardReply createEmptyInstance() => create();
  static $pb.PbList<DisconnectKeyboardReply> createRepeated() => $pb.PbList<DisconnectKeyboardReply>();
  @$core.pragma('dart2js:noInline')
  static DisconnectKeyboardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectKeyboardReply>(create);
  static DisconnectKeyboardReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class SetLayerRequest extends $pb.GeneratedMessage {
  factory SetLayerRequest({
    $core.int? layer,
  }) {
    final $result = create();
    if (layer != null) {
      $result.layer = layer;
    }
    return $result;
  }
  SetLayerRequest._() : super();
  factory SetLayerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetLayerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetLayerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'layer', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetLayerRequest clone() => SetLayerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetLayerRequest copyWith(void Function(SetLayerRequest) updates) => super.copyWith((message) => updates(message as SetLayerRequest)) as SetLayerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLayerRequest create() => SetLayerRequest._();
  SetLayerRequest createEmptyInstance() => create();
  static $pb.PbList<SetLayerRequest> createRepeated() => $pb.PbList<SetLayerRequest>();
  @$core.pragma('dart2js:noInline')
  static SetLayerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetLayerRequest>(create);
  static SetLayerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get layer => $_getIZ(0);
  @$pb.TagNumber(1)
  set layer($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLayer() => $_has(0);
  @$pb.TagNumber(1)
  void clearLayer() => $_clearField(1);
}

class SetLayerReply extends $pb.GeneratedMessage {
  factory SetLayerReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SetLayerReply._() : super();
  factory SetLayerReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetLayerReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetLayerReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetLayerReply clone() => SetLayerReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetLayerReply copyWith(void Function(SetLayerReply) updates) => super.copyWith((message) => updates(message as SetLayerReply)) as SetLayerReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLayerReply create() => SetLayerReply._();
  SetLayerReply createEmptyInstance() => create();
  static $pb.PbList<SetLayerReply> createRepeated() => $pb.PbList<SetLayerReply>();
  @$core.pragma('dart2js:noInline')
  static SetLayerReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetLayerReply>(create);
  static SetLayerReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class SetRGBLedRequest extends $pb.GeneratedMessage {
  factory SetRGBLedRequest({
    $core.int? led,
    $core.int? red,
    $core.int? green,
    $core.int? blue,
    $core.int? sustain,
  }) {
    final $result = create();
    if (led != null) {
      $result.led = led;
    }
    if (red != null) {
      $result.red = red;
    }
    if (green != null) {
      $result.green = green;
    }
    if (blue != null) {
      $result.blue = blue;
    }
    if (sustain != null) {
      $result.sustain = sustain;
    }
    return $result;
  }
  SetRGBLedRequest._() : super();
  factory SetRGBLedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRGBLedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRGBLedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'led', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'sustain', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRGBLedRequest clone() => SetRGBLedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRGBLedRequest copyWith(void Function(SetRGBLedRequest) updates) => super.copyWith((message) => updates(message as SetRGBLedRequest)) as SetRGBLedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRGBLedRequest create() => SetRGBLedRequest._();
  SetRGBLedRequest createEmptyInstance() => create();
  static $pb.PbList<SetRGBLedRequest> createRepeated() => $pb.PbList<SetRGBLedRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRGBLedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRGBLedRequest>(create);
  static SetRGBLedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get led => $_getIZ(0);
  @$pb.TagNumber(1)
  set led($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLed() => $_has(0);
  @$pb.TagNumber(1)
  void clearLed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get red => $_getIZ(1);
  @$pb.TagNumber(2)
  set red($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRed() => $_has(1);
  @$pb.TagNumber(2)
  void clearRed() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get green => $_getIZ(2);
  @$pb.TagNumber(3)
  set green($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGreen() => $_has(2);
  @$pb.TagNumber(3)
  void clearGreen() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get blue => $_getIZ(3);
  @$pb.TagNumber(4)
  set blue($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get sustain => $_getIZ(4);
  @$pb.TagNumber(5)
  set sustain($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSustain() => $_has(4);
  @$pb.TagNumber(5)
  void clearSustain() => $_clearField(5);
}

class SetRGBLedReply extends $pb.GeneratedMessage {
  factory SetRGBLedReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SetRGBLedReply._() : super();
  factory SetRGBLedReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRGBLedReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRGBLedReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRGBLedReply clone() => SetRGBLedReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRGBLedReply copyWith(void Function(SetRGBLedReply) updates) => super.copyWith((message) => updates(message as SetRGBLedReply)) as SetRGBLedReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRGBLedReply create() => SetRGBLedReply._();
  SetRGBLedReply createEmptyInstance() => create();
  static $pb.PbList<SetRGBLedReply> createRepeated() => $pb.PbList<SetRGBLedReply>();
  @$core.pragma('dart2js:noInline')
  static SetRGBLedReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRGBLedReply>(create);
  static SetRGBLedReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class SetRGBAllRequest extends $pb.GeneratedMessage {
  factory SetRGBAllRequest({
    $core.int? red,
    $core.int? green,
    $core.int? blue,
    $core.int? sustain,
  }) {
    final $result = create();
    if (red != null) {
      $result.red = red;
    }
    if (green != null) {
      $result.green = green;
    }
    if (blue != null) {
      $result.blue = blue;
    }
    if (sustain != null) {
      $result.sustain = sustain;
    }
    return $result;
  }
  SetRGBAllRequest._() : super();
  factory SetRGBAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRGBAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRGBAllRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sustain', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRGBAllRequest clone() => SetRGBAllRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRGBAllRequest copyWith(void Function(SetRGBAllRequest) updates) => super.copyWith((message) => updates(message as SetRGBAllRequest)) as SetRGBAllRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRGBAllRequest create() => SetRGBAllRequest._();
  SetRGBAllRequest createEmptyInstance() => create();
  static $pb.PbList<SetRGBAllRequest> createRepeated() => $pb.PbList<SetRGBAllRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRGBAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRGBAllRequest>(create);
  static SetRGBAllRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get red => $_getIZ(0);
  @$pb.TagNumber(1)
  set red($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get green => $_getIZ(1);
  @$pb.TagNumber(2)
  set green($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get blue => $_getIZ(2);
  @$pb.TagNumber(3)
  set blue($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sustain => $_getIZ(3);
  @$pb.TagNumber(4)
  set sustain($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSustain() => $_has(3);
  @$pb.TagNumber(4)
  void clearSustain() => $_clearField(4);
}

class SetRGBAllReply extends $pb.GeneratedMessage {
  factory SetRGBAllReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SetRGBAllReply._() : super();
  factory SetRGBAllReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRGBAllReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRGBAllReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRGBAllReply clone() => SetRGBAllReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRGBAllReply copyWith(void Function(SetRGBAllReply) updates) => super.copyWith((message) => updates(message as SetRGBAllReply)) as SetRGBAllReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRGBAllReply create() => SetRGBAllReply._();
  SetRGBAllReply createEmptyInstance() => create();
  static $pb.PbList<SetRGBAllReply> createRepeated() => $pb.PbList<SetRGBAllReply>();
  @$core.pragma('dart2js:noInline')
  static SetRGBAllReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRGBAllReply>(create);
  static SetRGBAllReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class SetStatusLedRequest extends $pb.GeneratedMessage {
  factory SetStatusLedRequest({
    $core.int? led,
    $core.bool? on,
    $core.int? sustain,
  }) {
    final $result = create();
    if (led != null) {
      $result.led = led;
    }
    if (on != null) {
      $result.on = on;
    }
    if (sustain != null) {
      $result.sustain = sustain;
    }
    return $result;
  }
  SetStatusLedRequest._() : super();
  factory SetStatusLedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStatusLedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetStatusLedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'led', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'on')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sustain', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStatusLedRequest clone() => SetStatusLedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStatusLedRequest copyWith(void Function(SetStatusLedRequest) updates) => super.copyWith((message) => updates(message as SetStatusLedRequest)) as SetStatusLedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStatusLedRequest create() => SetStatusLedRequest._();
  SetStatusLedRequest createEmptyInstance() => create();
  static $pb.PbList<SetStatusLedRequest> createRepeated() => $pb.PbList<SetStatusLedRequest>();
  @$core.pragma('dart2js:noInline')
  static SetStatusLedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetStatusLedRequest>(create);
  static SetStatusLedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get led => $_getIZ(0);
  @$pb.TagNumber(1)
  set led($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLed() => $_has(0);
  @$pb.TagNumber(1)
  void clearLed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get on => $_getBF(1);
  @$pb.TagNumber(2)
  set on($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearOn() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get sustain => $_getIZ(2);
  @$pb.TagNumber(3)
  set sustain($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSustain() => $_has(2);
  @$pb.TagNumber(3)
  void clearSustain() => $_clearField(3);
}

class SetStatusLedReply extends $pb.GeneratedMessage {
  factory SetStatusLedReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SetStatusLedReply._() : super();
  factory SetStatusLedReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStatusLedReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetStatusLedReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStatusLedReply clone() => SetStatusLedReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStatusLedReply copyWith(void Function(SetStatusLedReply) updates) => super.copyWith((message) => updates(message as SetStatusLedReply)) as SetStatusLedReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStatusLedReply create() => SetStatusLedReply._();
  SetStatusLedReply createEmptyInstance() => create();
  static $pb.PbList<SetStatusLedReply> createRepeated() => $pb.PbList<SetStatusLedReply>();
  @$core.pragma('dart2js:noInline')
  static SetStatusLedReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetStatusLedReply>(create);
  static SetStatusLedReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class IncreaseBrightnessRequest extends $pb.GeneratedMessage {
  factory IncreaseBrightnessRequest() => create();
  IncreaseBrightnessRequest._() : super();
  factory IncreaseBrightnessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IncreaseBrightnessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IncreaseBrightnessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IncreaseBrightnessRequest clone() => IncreaseBrightnessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IncreaseBrightnessRequest copyWith(void Function(IncreaseBrightnessRequest) updates) => super.copyWith((message) => updates(message as IncreaseBrightnessRequest)) as IncreaseBrightnessRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IncreaseBrightnessRequest create() => IncreaseBrightnessRequest._();
  IncreaseBrightnessRequest createEmptyInstance() => create();
  static $pb.PbList<IncreaseBrightnessRequest> createRepeated() => $pb.PbList<IncreaseBrightnessRequest>();
  @$core.pragma('dart2js:noInline')
  static IncreaseBrightnessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IncreaseBrightnessRequest>(create);
  static IncreaseBrightnessRequest? _defaultInstance;
}

class DecreaseBrightnessRequest extends $pb.GeneratedMessage {
  factory DecreaseBrightnessRequest() => create();
  DecreaseBrightnessRequest._() : super();
  factory DecreaseBrightnessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DecreaseBrightnessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DecreaseBrightnessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DecreaseBrightnessRequest clone() => DecreaseBrightnessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DecreaseBrightnessRequest copyWith(void Function(DecreaseBrightnessRequest) updates) => super.copyWith((message) => updates(message as DecreaseBrightnessRequest)) as DecreaseBrightnessRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecreaseBrightnessRequest create() => DecreaseBrightnessRequest._();
  DecreaseBrightnessRequest createEmptyInstance() => create();
  static $pb.PbList<DecreaseBrightnessRequest> createRepeated() => $pb.PbList<DecreaseBrightnessRequest>();
  @$core.pragma('dart2js:noInline')
  static DecreaseBrightnessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DecreaseBrightnessRequest>(create);
  static DecreaseBrightnessRequest? _defaultInstance;
}

class BrightnessUpdateReply extends $pb.GeneratedMessage {
  factory BrightnessUpdateReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  BrightnessUpdateReply._() : super();
  factory BrightnessUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BrightnessUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BrightnessUpdateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BrightnessUpdateReply clone() => BrightnessUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BrightnessUpdateReply copyWith(void Function(BrightnessUpdateReply) updates) => super.copyWith((message) => updates(message as BrightnessUpdateReply)) as BrightnessUpdateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BrightnessUpdateReply create() => BrightnessUpdateReply._();
  BrightnessUpdateReply createEmptyInstance() => create();
  static $pb.PbList<BrightnessUpdateReply> createRepeated() => $pb.PbList<BrightnessUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static BrightnessUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BrightnessUpdateReply>(create);
  static BrightnessUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
