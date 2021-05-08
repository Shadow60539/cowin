import 'package:cowin/domain/news/news.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class NewsWidget extends StatefulWidget {
  final News news;

  const NewsWidget({Key key, @required this.news}) : super(key: key);

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 20,
        child: Marquee(
          text:
              '${widget.news.newcases} and ${widget.news.newdeaths} were reported in ${widget.news.location}',
          style: TextStyle(color: Colors.white.withOpacity(0.5)),
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: const Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: const Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: const Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
