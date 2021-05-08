import 'dart:math';

import 'package:countup/countup.dart';
import 'package:cowin/presentation/core/fade_animations.dart';
import 'package:cowin/presentation/core/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';

class PreventionPage extends StatefulWidget {
  @override
  _PreventionPageState createState() => _PreventionPageState();
}

class _PreventionPageState extends State<PreventionPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  final List<int> _list = [];

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Future f = Future(() {});
      [1, 2, 3, 4, 5, 6].forEach((element) {
        f = f.then(
            (value) => Future.delayed(const Duration(milliseconds: 300), () {
                  _list.add(element);
                  _key.currentState.insertItem(_list.length - 1);
                }));
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: AnimatedList(
          key: _key,
          shrinkWrap: true,
          itemBuilder: (context, index, animation) {
            if (index == 0) {
              return FadeFromUpAnimation(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 50),
                  child: Center(
                    child: Text(
                      'Prevention',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(.5)),
                    ),
                  ),
                ),
              );
            } else if (index == 1) {
              return const FadeFromUpAnimation(
                child: MyCard(
                  lottie: 'wear_mask',
                  title: 'Wear mask',
                  content:
                      'Wearing a facial mask is compulsory for anyone stepping out of their house.',
                ),
              );
            } else if (index == 2) {
              return const FadeFromUpAnimation(
                child: MyCard(
                    lottie: 'wash_hands',
                    title: 'Wash your hands',
                    content:
                        'Clean your hands often. Use soap and water, or an alcohol-based hand rub.'),
              );
            } else if (index == 3) {
              return const FadeFromUpAnimation(
                child: MyCard(
                  lottie: 'distance',
                  title: 'Maintain social distance',
                  content:
                      'Maintain a distance of at least 2 metre from others. ',
                ),
              );
            } else if (index == 4) {
              return const FadeFromUpAnimation(
                child: MyCard(
                  lottie: 'home',
                  title: 'Stay home stay safe',
                  content:
                      'It is the only vaccine that has been invented till now.',
                ),
              );
            } else {
              return const FadeFromUpAnimation(
                child: MyCard(
                  lottie: 'heart',
                  title: 'Emergency',
                  content:
                      'If you have a fever, cough and difficulty breathing, seek medical attention. Call in advance',
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();

  final String lottie, title, content;

  const MyCard({this.lottie, this.title, this.content});
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 10),
      child: Card(
        color: Palette.greyColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Lottie.asset('assets/${widget.lottie}.json',
                  height: 60, width: 60, repeat: true),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.content,
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Read More',
                          style: TextStyle(color: Colors.green, fontSize: 8),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Countup(
                          style: const TextStyle(
                              color: Colors.white24, fontSize: 8),
                          begin: 0,
                          end: Random().nextInt(200).toDouble(),
                          duration: const Duration(seconds: 10),
                          curve: Curves.ease,
                        ),
                        const Text(
                          ' discussions',
                          style: TextStyle(color: Colors.white24, fontSize: 8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
