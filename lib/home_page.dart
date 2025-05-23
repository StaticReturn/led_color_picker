import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/widgets/my_app_bar.dart';
import 'package:led_color_picker/widgets/picker.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: catppuccin.mocha.base,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 24.0),
            child: MyAppBar()
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 24.0, right: 24.0),
            child: MyColorPicker(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ValueListenableBuilder(
              valueListenable: data.message,
              builder: (BuildContext context, String value, Widget? child) {
                return Text(data.message.value, style: data.textStyle);
              },
            ),
          ),
        ],
      ),
    );
  }
}