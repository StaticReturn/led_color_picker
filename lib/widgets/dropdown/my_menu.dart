import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';


class MyDropdownMenu extends StatelessWidget {
  const MyDropdownMenu({required this.child, this.width, super.key});
  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 200,
      decoration: ShapeDecoration(
        color: catppuccin.mocha.crust,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: catppuccin.mocha.text,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}