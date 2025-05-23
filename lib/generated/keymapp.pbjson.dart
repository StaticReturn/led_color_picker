//
//  Generated code. Do not modify.
//  source: keymapp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use keyboardDescriptor instead')
const Keyboard$json = {
  '1': 'Keyboard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'friendly_name', '3': 2, '4': 1, '5': 9, '10': 'friendlyName'},
    {'1': 'is_connected', '3': 3, '4': 1, '5': 8, '10': 'isConnected'},
  ],
};

/// Descriptor for `Keyboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyboardDescriptor = $convert.base64Decode(
    'CghLZXlib2FyZBIOCgJpZBgBIAEoBVICaWQSIwoNZnJpZW5kbHlfbmFtZRgCIAEoCVIMZnJpZW'
    '5kbHlOYW1lEiEKDGlzX2Nvbm5lY3RlZBgDIAEoCFILaXNDb25uZWN0ZWQ=');

@$core.Deprecated('Use connectedKeyboardDescriptor instead')
const ConnectedKeyboard$json = {
  '1': 'ConnectedKeyboard',
  '2': [
    {'1': 'friendly_name', '3': 1, '4': 1, '5': 9, '10': 'friendlyName'},
    {'1': 'firmware_version', '3': 2, '4': 1, '5': 9, '10': 'firmwareVersion'},
    {'1': 'current_layer', '3': 3, '4': 1, '5': 5, '10': 'currentLayer'},
  ],
};

/// Descriptor for `ConnectedKeyboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectedKeyboardDescriptor = $convert.base64Decode(
    'ChFDb25uZWN0ZWRLZXlib2FyZBIjCg1mcmllbmRseV9uYW1lGAEgASgJUgxmcmllbmRseU5hbW'
    'USKQoQZmlybXdhcmVfdmVyc2lvbhgCIAEoCVIPZmlybXdhcmVWZXJzaW9uEiMKDWN1cnJlbnRf'
    'bGF5ZXIYAyABKAVSDGN1cnJlbnRMYXllcg==');

@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = {
  '1': 'GetStatusRequest',
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use getStatusReplyDescriptor instead')
const GetStatusReply$json = {
  '1': 'GetStatusReply',
  '2': [
    {'1': 'keymapp_version', '3': 1, '4': 1, '5': 9, '10': 'keymappVersion'},
    {'1': 'connected_keyboard', '3': 2, '4': 1, '5': 11, '6': '.api.ConnectedKeyboard', '10': 'connectedKeyboard'},
  ],
};

/// Descriptor for `GetStatusReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusReplyDescriptor = $convert.base64Decode(
    'Cg5HZXRTdGF0dXNSZXBseRInCg9rZXltYXBwX3ZlcnNpb24YASABKAlSDmtleW1hcHBWZXJzaW'
    '9uEkUKEmNvbm5lY3RlZF9rZXlib2FyZBgCIAEoCzIWLmFwaS5Db25uZWN0ZWRLZXlib2FyZFIR'
    'Y29ubmVjdGVkS2V5Ym9hcmQ=');

@$core.Deprecated('Use getKeyboardsRequestDescriptor instead')
const GetKeyboardsRequest$json = {
  '1': 'GetKeyboardsRequest',
};

/// Descriptor for `GetKeyboardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKeyboardsRequestDescriptor = $convert.base64Decode(
    'ChNHZXRLZXlib2FyZHNSZXF1ZXN0');

@$core.Deprecated('Use getKeyboardsReplyDescriptor instead')
const GetKeyboardsReply$json = {
  '1': 'GetKeyboardsReply',
  '2': [
    {'1': 'keyboards', '3': 1, '4': 3, '5': 11, '6': '.api.Keyboard', '10': 'keyboards'},
  ],
};

/// Descriptor for `GetKeyboardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKeyboardsReplyDescriptor = $convert.base64Decode(
    'ChFHZXRLZXlib2FyZHNSZXBseRIrCglrZXlib2FyZHMYASADKAsyDS5hcGkuS2V5Ym9hcmRSCW'
    'tleWJvYXJkcw==');

@$core.Deprecated('Use connectAnyKeyboardRequestDescriptor instead')
const ConnectAnyKeyboardRequest$json = {
  '1': 'ConnectAnyKeyboardRequest',
};

/// Descriptor for `ConnectAnyKeyboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAnyKeyboardRequestDescriptor = $convert.base64Decode(
    'ChlDb25uZWN0QW55S2V5Ym9hcmRSZXF1ZXN0');

@$core.Deprecated('Use connectKeyboardRequestDescriptor instead')
const ConnectKeyboardRequest$json = {
  '1': 'ConnectKeyboardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ConnectKeyboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectKeyboardRequestDescriptor = $convert.base64Decode(
    'ChZDb25uZWN0S2V5Ym9hcmRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use connectKeyboardReplyDescriptor instead')
const ConnectKeyboardReply$json = {
  '1': 'ConnectKeyboardReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `ConnectKeyboardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectKeyboardReplyDescriptor = $convert.base64Decode(
    'ChRDb25uZWN0S2V5Ym9hcmRSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use disconnectKeyboardRequestDescriptor instead')
const DisconnectKeyboardRequest$json = {
  '1': 'DisconnectKeyboardRequest',
};

/// Descriptor for `DisconnectKeyboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectKeyboardRequestDescriptor = $convert.base64Decode(
    'ChlEaXNjb25uZWN0S2V5Ym9hcmRSZXF1ZXN0');

@$core.Deprecated('Use disconnectKeyboardReplyDescriptor instead')
const DisconnectKeyboardReply$json = {
  '1': 'DisconnectKeyboardReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DisconnectKeyboardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectKeyboardReplyDescriptor = $convert.base64Decode(
    'ChdEaXNjb25uZWN0S2V5Ym9hcmRSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use setLayerRequestDescriptor instead')
const SetLayerRequest$json = {
  '1': 'SetLayerRequest',
  '2': [
    {'1': 'layer', '3': 1, '4': 1, '5': 5, '10': 'layer'},
  ],
};

/// Descriptor for `SetLayerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setLayerRequestDescriptor = $convert.base64Decode(
    'Cg9TZXRMYXllclJlcXVlc3QSFAoFbGF5ZXIYASABKAVSBWxheWVy');

@$core.Deprecated('Use setLayerReplyDescriptor instead')
const SetLayerReply$json = {
  '1': 'SetLayerReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SetLayerReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setLayerReplyDescriptor = $convert.base64Decode(
    'Cg1TZXRMYXllclJlcGx5EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use setRGBLedRequestDescriptor instead')
const SetRGBLedRequest$json = {
  '1': 'SetRGBLedRequest',
  '2': [
    {'1': 'led', '3': 1, '4': 1, '5': 5, '10': 'led'},
    {'1': 'red', '3': 2, '4': 1, '5': 5, '10': 'red'},
    {'1': 'green', '3': 3, '4': 1, '5': 5, '10': 'green'},
    {'1': 'blue', '3': 4, '4': 1, '5': 5, '10': 'blue'},
    {'1': 'sustain', '3': 5, '4': 1, '5': 5, '10': 'sustain'},
  ],
};

/// Descriptor for `SetRGBLedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRGBLedRequestDescriptor = $convert.base64Decode(
    'ChBTZXRSR0JMZWRSZXF1ZXN0EhAKA2xlZBgBIAEoBVIDbGVkEhAKA3JlZBgCIAEoBVIDcmVkEh'
    'QKBWdyZWVuGAMgASgFUgVncmVlbhISCgRibHVlGAQgASgFUgRibHVlEhgKB3N1c3RhaW4YBSAB'
    'KAVSB3N1c3RhaW4=');

@$core.Deprecated('Use setRGBLedReplyDescriptor instead')
const SetRGBLedReply$json = {
  '1': 'SetRGBLedReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SetRGBLedReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRGBLedReplyDescriptor = $convert.base64Decode(
    'Cg5TZXRSR0JMZWRSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use setRGBAllRequestDescriptor instead')
const SetRGBAllRequest$json = {
  '1': 'SetRGBAllRequest',
  '2': [
    {'1': 'red', '3': 1, '4': 1, '5': 5, '10': 'red'},
    {'1': 'green', '3': 2, '4': 1, '5': 5, '10': 'green'},
    {'1': 'blue', '3': 3, '4': 1, '5': 5, '10': 'blue'},
    {'1': 'sustain', '3': 4, '4': 1, '5': 5, '10': 'sustain'},
  ],
};

/// Descriptor for `SetRGBAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRGBAllRequestDescriptor = $convert.base64Decode(
    'ChBTZXRSR0JBbGxSZXF1ZXN0EhAKA3JlZBgBIAEoBVIDcmVkEhQKBWdyZWVuGAIgASgFUgVncm'
    'VlbhISCgRibHVlGAMgASgFUgRibHVlEhgKB3N1c3RhaW4YBCABKAVSB3N1c3RhaW4=');

@$core.Deprecated('Use setRGBAllReplyDescriptor instead')
const SetRGBAllReply$json = {
  '1': 'SetRGBAllReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SetRGBAllReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRGBAllReplyDescriptor = $convert.base64Decode(
    'Cg5TZXRSR0JBbGxSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use setStatusLedRequestDescriptor instead')
const SetStatusLedRequest$json = {
  '1': 'SetStatusLedRequest',
  '2': [
    {'1': 'led', '3': 1, '4': 1, '5': 5, '10': 'led'},
    {'1': 'on', '3': 2, '4': 1, '5': 8, '10': 'on'},
    {'1': 'sustain', '3': 3, '4': 1, '5': 5, '10': 'sustain'},
  ],
};

/// Descriptor for `SetStatusLedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStatusLedRequestDescriptor = $convert.base64Decode(
    'ChNTZXRTdGF0dXNMZWRSZXF1ZXN0EhAKA2xlZBgBIAEoBVIDbGVkEg4KAm9uGAIgASgIUgJvbh'
    'IYCgdzdXN0YWluGAMgASgFUgdzdXN0YWlu');

@$core.Deprecated('Use setStatusLedReplyDescriptor instead')
const SetStatusLedReply$json = {
  '1': 'SetStatusLedReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SetStatusLedReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStatusLedReplyDescriptor = $convert.base64Decode(
    'ChFTZXRTdGF0dXNMZWRSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use increaseBrightnessRequestDescriptor instead')
const IncreaseBrightnessRequest$json = {
  '1': 'IncreaseBrightnessRequest',
};

/// Descriptor for `IncreaseBrightnessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List increaseBrightnessRequestDescriptor = $convert.base64Decode(
    'ChlJbmNyZWFzZUJyaWdodG5lc3NSZXF1ZXN0');

@$core.Deprecated('Use decreaseBrightnessRequestDescriptor instead')
const DecreaseBrightnessRequest$json = {
  '1': 'DecreaseBrightnessRequest',
};

/// Descriptor for `DecreaseBrightnessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decreaseBrightnessRequestDescriptor = $convert.base64Decode(
    'ChlEZWNyZWFzZUJyaWdodG5lc3NSZXF1ZXN0');

@$core.Deprecated('Use brightnessUpdateReplyDescriptor instead')
const BrightnessUpdateReply$json = {
  '1': 'BrightnessUpdateReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `BrightnessUpdateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List brightnessUpdateReplyDescriptor = $convert.base64Decode(
    'ChVCcmlnaHRuZXNzVXBkYXRlUmVwbHkSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

