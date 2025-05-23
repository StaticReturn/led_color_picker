import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';


class KeyappChipStatus extends StatelessWidget {
  const KeyappChipStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final String keymappVersion = data.keyBoardConnected.value ? data.status.keymappVersion : "";
    final String firmwareVersion = data.keyBoardConnected.value ? data.status.keyboard!.firmwareVersion : "";

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'LCP Version: ', style: data.textStyleSmall.copyWith(fontWeight: FontWeight.bold)),
              TextSpan(text: ' ${data.packageInfo.version}', style: data.textStyleSmall),
            ]
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Keymapp Version: ', style: data.textStyleSmall.copyWith(fontWeight: FontWeight.bold)),
              TextSpan(text: ' $keymappVersion', style: data.textStyleSmall),
            ]
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Firmware Version: ', style: data.textStyleSmall.copyWith(fontWeight: FontWeight.bold)),
              TextSpan(text: ' $firmwareVersion', style: data.textStyleSmall),
            ]
          ),
        ),
      ],
    );
  }
}