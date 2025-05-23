import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:led_color_picker/data_structures/global_data.dart';


class KeyboardSelector extends StatefulWidget {
  const KeyboardSelector({required this.name, required this.index, required this.controller, super.key});
  final String name;
  final int index;
  final OverlayPortalController controller;

  @override
  State<KeyboardSelector> createState() => _KeyboardSelectorState();
}

class _KeyboardSelectorState extends State<KeyboardSelector> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hover) {
        hovering = hover;
        setState(() {});
      },
      onTap:() async {
        final bool connected = await data.connectToKeyboard(widget.index +1);

        if (connected) {
          data.keyboard = widget.name;
        }
        
        widget.controller.toggle();
      },
      child: AnimatedContainer(        
        width: 300,
        color: hovering ? catppuccin.mocha.surface0 : catppuccin.mocha.base,
        duration: Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        child: Text("${widget.index +1}:  ${widget.name}", style: data.buttonStyle),
      ),
    );
  }
}