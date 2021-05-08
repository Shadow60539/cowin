import 'dart:math';

import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CasesWidget extends StatefulWidget {
  final int cases;
  final String title;

  const CasesWidget({
    Key key,
    @required this.cases,
    @required this.title,
  }) : super(key: key);

  @override
  _CasesWidgetState createState() => _CasesWidgetState();
}

class _CasesWidgetState extends State<CasesWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: const Duration(milliseconds: 800),
      alignment: Alignment.centerLeft,
      curve: Curves.ease,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Countup(
                style: TextStyle(
                    fontSize: 12, color: Colors.white.withOpacity(0.8)),
                begin: 0,
                end: widget.cases.toDouble(),
                duration: const Duration(seconds: 2),
                curve: Curves.ease,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                FontAwesomeIcons.arrowUp,
                size: 8,
                color: Colors.red.withOpacity(.3),
              ),
              Countup(
                style:
                    TextStyle(fontSize: 12, color: Colors.red.withOpacity(.3)),
                begin: 0,
                end: Random().nextInt(20).toDouble(),
                duration: const Duration(seconds: 10),
                curve: Curves.ease,
              ),
              Text(
                '%',
                style:
                    TextStyle(fontSize: 8, color: Colors.red.withOpacity(.3)),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(.2)),
          ),
        ],
      ),
    );
  }
}
