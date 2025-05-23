import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:led_color_picker/communicate/api.dart';
import 'package:led_color_picker/communicate/utils.dart';
import 'package:led_color_picker/data_structures/global_data.dart';


final RegExp regExp = RegExp(r"^#?([A-Fa-f0-9]{6})$");
const int snackDuration = 10;  // Seconds

class MyColorPicker extends StatefulWidget {
  const MyColorPicker({super.key});

  @override
  State<MyColorPicker> createState() => _MyColorPickerState();
}

class _MyColorPickerState extends State<MyColorPicker> {
  late String currentColor = _toRGBString(data.pickerColor.value);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 145,
                    child: ValueListenableBuilder(
                      valueListenable: data.pickerColor,
                      builder: (BuildContext context, Color value, Widget? child) {
                        return SelectableText.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Color: ', style: data.textStyle.copyWith(fontWeight: FontWeight.bold)),
                              TextSpan(text: ' $currentColor', style: data.textStyle),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: _copyToClipboard,
                    child: Icon(Icons.content_copy, color: catppuccin.mocha.mauve)
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text("Set Color", style: data.textStyle.copyWith(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        maxLength: 6,
                        style: data.textStyle,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-fA-F0-9]'))],
                        decoration: InputDecoration(                          
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: catppuccin.mocha.subtext0, width: 1.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: catppuccin.mocha.text, width: 1.0)
                          ),
                        ),
                        onChanged: (final String value) {
                          if (regExp.hasMatch(value)) {
                            setState(() {
                              _onColorChange(_fromHex(value));
                            });  
                          }
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: _copyFromClipboard,
                    child: Icon(Icons.content_paste, color: catppuccin.mocha.mauve),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 500,
          height: 250,
          margin: const EdgeInsets.only(right: 24.0),
          child: HueRingPicker(
            pickerColor: data.pickerColor.value,
            onColorChanged: _onColorChange,
          ),
        ),
      ],
    );
  }

  _onColorChange(Color newColor) async {
    data.pickerColor.value = newColor;
    currentColor = _toRGBString(newColor);

    try { 
      (int, int, int) color = Utils.hexToRgb(currentColor);
      await data.kontroll.setRgbAll(color.$1, color.$2, color.$3, 0);
      data.message.value = "";
    } on ApiError {
      data.keyappConnected.value = false;
      data.message.value = "Failed to set keyboard LED colors.  Make sure Keymapp is running and you have selected a proper keyboard.";
    } catch (e) {
      data.keyappConnected.value = false;
      data.message.value = e.toString();
    }
  }

  String _toRGBString(Color color) {
    final String r = (color.r * 255).round().toRadixString(16).padLeft(2, '0');
    final String g = (color.g * 255).round().toRadixString(16).padLeft(2, '0');
    final String b = (color.b * 255).round().toRadixString(16).padLeft(2, '0');
    return '#$r$g$b'.toUpperCase();
  }

  Color _fromHex(String hexString) {
    final StringBuffer buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _toRGBString(data.pickerColor.value))); 
    data.scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        duration: Duration(seconds: snackDuration),
        content: Text("Copied $currentColor to the clipboard."),
      ),
    );
  }

  _copyFromClipboard() async {
    String clipboardData = "";
    
    try {
      final ClipboardData? data = await Clipboard.getData("text/plain");
      clipboardData = (data == null) ? "" : (data.text ?? "");
    } catch (e) {
      data.message.value = "Could not read color value from the clipboard.";
    }
    
    if (!regExp.hasMatch(clipboardData)) {
      data.scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          duration: Duration(seconds: snackDuration),
          content: Text("Did not find valid color code '#RRGGBB'. Found:  ${clipboardData.substring(0, 10)}.")
        ),
      );
      return;
    }
    
    data.scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        content: Text("Color $currentColor set from Clipboard.")
      ),
    );

    setState(() {
      _onColorChange(_fromHex(clipboardData));
    });
  }
}