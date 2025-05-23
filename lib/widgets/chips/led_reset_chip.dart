import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/communicate/api.dart';
import 'package:led_color_picker/data_structures/global_data.dart';


class LedResetChip extends StatelessWidget {
  const LedResetChip({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        try {
          data.kontroll.restoreRgbLeds();
          data.message.value = "";
        } on ApiError {
          data.message.value = "";
        } catch (e) {
          data.message.value = "";
        }
      },
      child: Chip(
        backgroundColor: catppuccin.mocha.crust,
        label: Text("LED Reset", style: data.buttonStyle),
        avatar:  Icon(Icons.replay, color: catppuccin.mocha.text),
      ),
    );
  }
}