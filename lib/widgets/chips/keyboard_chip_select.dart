import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/generated/keymapp.pb.dart';
import 'package:led_color_picker/widgets/chips/keyboard_selector.dart';


class KeyboardChipSelect extends StatefulWidget {
  const KeyboardChipSelect({required this.controller, super.key});
  final OverlayPortalController controller;

  @override
  State<KeyboardChipSelect> createState() => _KeyboardChipSelectState();
}

class _KeyboardChipSelectState extends State<KeyboardChipSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (data.keyboards.isEmpty)
          Container(        
            width: 300,
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text("No Keyboards", style: data.buttonStyle),
          ),
        for (final Keyboard keyboard in data.keyboards)
          KeyboardSelector(name: keyboard.friendlyName, index: data.keyboards.indexOf(keyboard), controller: widget.controller),
      ],
    );
  }
}