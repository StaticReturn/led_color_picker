import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/widgets/chips/keyboard_chip_select.dart';
import 'package:led_color_picker/widgets/dropdown/my_dropdown.dart';
import 'package:led_color_picker/widgets/dropdown/my_menu.dart';


class KeyboardChip extends StatelessWidget {
  const KeyboardChip({super.key});

  @override
  Widget build(BuildContext context) {
    final OverlayPortalController controller = OverlayPortalController();

    return GestureDetector(
      onTap:() => controller.toggle(),
      child: MyDropdown(
        controller: controller,
        parent: ValueListenableBuilder(
          valueListenable: data.keyBoardConnected,
          builder: (BuildContext context, bool value, Widget? child) {
            return Chip(
              backgroundColor: catppuccin.mocha.crust,
              side: BorderSide(color: catppuccin.mocha.text),              
              label: Text(data.keyboard, style: data.buttonStyle),
              avatar: Icon(Icons.keyboard, color: value ? catppuccin.mocha.green : catppuccin.mocha.red),
            );
          },
        ),
        child: MyDropdownMenu(
          width: 150,
          child: KeyboardChipSelect(controller: controller),
        ),
      ),
    );
  }
}