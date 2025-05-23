import 'package:flutter/material.dart';


class MyDropdown extends StatelessWidget {
  const MyDropdown({required this.controller, required this.parent, required this.child, super.key});
  final OverlayPortalController controller;
  final Widget parent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final LayerLink link = LayerLink();
    return CompositedTransformTarget(
      link: link,
      child: OverlayPortal(
        controller: controller,
        overlayChildBuilder: (BuildContext context) {
          return CompositedTransformFollower(
            link: link,
            targetAnchor: Alignment.bottomLeft,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: child,
              ),
            ),
          );
        },
        child: parent,
      ),
    );
  }
}