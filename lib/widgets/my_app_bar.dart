import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/widgets/chips/keyapp_chip.dart';
import 'package:led_color_picker/widgets/chips/keyboard_chip.dart';
import 'package:led_color_picker/widgets/chips/led_reset_chip.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: catppuccin.mocha.surface0,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text('Port:', style: data.textStyle.copyWith(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 40,
                    width: 70,
                    child: TextFormField(
                      maxLength: 10,                
                      style: data.textStyle,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                      initialValue: data.port.value,
                      onChanged: (value) => data.port.value = value,
                      
                      decoration: InputDecoration(
                        counterText: "",
                        contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: catppuccin.mocha.subtext0, width: 1.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: catppuccin.mocha.text, width: 1.0)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: KeyappChip(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: KeyboardChip(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: LedResetChip(),
              ),
            ],
          )
        ],
      ),
    );
  }
}