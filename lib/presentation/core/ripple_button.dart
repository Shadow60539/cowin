import 'package:cowin/presentation/core/palette.dart';
import 'package:flutter/material.dart';
import 'package:splash_tap/splash_tap.dart';

class RippleButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const RippleButton({Key key, this.child, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Splash(
      splashColor: Palette.backgroundColor,
      maxRadius: 20,
      minRadius: 2,
      onTap: onTap,
      child: child,
    );
  }
}
