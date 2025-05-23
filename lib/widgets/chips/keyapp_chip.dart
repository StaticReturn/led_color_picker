import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/widgets/chips/keyapp_chip_status.dart';
import 'package:led_color_picker/widgets/dropdown/my_dropdown.dart';
import 'package:led_color_picker/widgets/dropdown/my_menu.dart';


class KeyappChip extends StatelessWidget {
  const KeyappChip({super.key});

  @override
  Widget build(BuildContext context) {
    final OverlayPortalController controller = OverlayPortalController();

    return GestureDetector(
      onTap:() => controller.toggle(),
      child: MyDropdown(
        controller: controller,
        parent: ValueListenableBuilder(
          valueListenable: data.keyappConnected,
          builder: (BuildContext context, bool value, Widget? child) {
            return Chip(
              backgroundColor: catppuccin.mocha.crust,
              side: BorderSide(color: catppuccin.mocha.text),              
              label: Text('Keyapp', style: data.buttonStyle),
              avatar: Icon(Icons.cable, color: value ? catppuccin.mocha.green : catppuccin.mocha.red),
            );
          },
        ),
        child: MyDropdownMenu(
          width: 220,
          child: KeyappChipStatus(),
        ),
      ),
    );
  }
}