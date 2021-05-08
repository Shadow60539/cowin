import 'package:cowin/presentation/core/palette.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide PopupMenuButton, PopupMenuItem;

import 'custom_popup.dart';

class CustomPopUpButton extends StatelessWidget {
  final Widget child;
  final List<Tuple2<Widget, dynamic>> itemBuilder;
  final void Function(dynamic) onChanged;
  final dynamic value;
  final bool showSelectedItem;
  CustomPopUpButton(
      {Key key,
      @required this.value,
      @required this.child,
      @required this.itemBuilder,
      @required this.onChanged,
      this.showSelectedItem = true})
      : assert(itemBuilder
            .any((tuple) => tuple.value2.runtimeType == value.runtimeType)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          cardColor: Colors.white,
          highlightColor: Palette.whiteColor,
          splashColor: Palette.whiteColor),
      child: PopupMenuButton(
          color: Palette.whiteColor,
          initialValue: value,
          elevation: 25,
          captureInheritedThemes: true,
          onSelected: onChanged,
          padding: const EdgeInsets.all(0),
          itemBuilder: (_) => itemBuilder
              .map((tuple) => PopupMenuItem(
                    value: tuple.value2,
                    // enabled: false,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 20, top: 12, bottom: 12, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: value == tuple.value2
                            ? Palette.backgroundColor
                            : Palette.whiteColor,
                      ),
                      child: tuple.value1,
                    ),
                  ))
              .toList(),
          offset: const Offset(20, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: child),
    );
  }
}
