import 'package:cowin/application/cases/cases_bloc.dart';
import 'package:cowin/application/news/news_bloc.dart';
import 'package:cowin/core/routes/route.gr.dart' as route;
import 'package:cowin/domain/cases/case.dart';
import 'package:cowin/domain/news/news.dart';
import 'package:cowin/presentation/core/fade_animations.dart';
import 'package:cowin/presentation/core/palette.dart';
import 'package:cowin/presentation/core/ripple_button.dart';
import 'package:cowin/presentation/home/widgets/cases_widget.dart';
import 'package:cowin/presentation/home/widgets/news_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey keyButton = GlobalKey();

  @override
  void initState() {
    showTutorial();
    // TODO: implement initState
    super.initState();
  }

  void showTutorial() {
    TutorialCoachMark(
      context,
      targets: [
        TargetFocus(identify: "Target 1", keyTarget: keyButton, contents: [
          TargetContent(
              child: FadeFromUpAnimation(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Prevention tips",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "This is the prevention gateway button",
                    style: TextStyle(color: Colors.white70),
                  ),
                )
              ],
            ),
          ))
        ])
      ], // List<TargetFocus>
      colorShadow: Colors.black.withOpacity(0.8), // DEFAULT Colors.black
      // alignSkip: Alignment.bottomRight,
      // textSkip: "SKIP",
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      hideSkip: true,

      onClickTarget: (target) async {},
      onClickOverlay: (target) {},
      onSkip: () {},
      onFinish: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.backgroundColor,
          title: Text(
            'Cowin',
            style: TextStyle(
                fontFamily: GoogleFonts.nunitoSans().fontFamily,
                fontWeight: FontWeight.w600),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Palette.backgroundColor,
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Covid 19',
                            style: TextStyle(
                                color: Palette.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Lottie.asset('assets/virus1.json',
                              height: 30, frameRate: FrameRate.max)
                        ],
                      ),
                      RippleButton(
                        onTap: () {
                          Navigator.pushNamed(
                              context, route.Router.preventationPage);
                        },
                        child: SvgPicture.asset(
                          'assets/icon.svg',
                          key: keyButton,
                          height: 25,
                          width: 25,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocConsumer<CasesBloc, CasesState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    final Case _cases = state.cases;
                    return SizedBox(
                      height: 170,
                      child: Card(
                          color: Palette.greyColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0,
                          child: AnimatedCrossFade(
                            firstChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CasesWidget(
                                      title: 'Confirmed',
                                      cases: _cases.confirmed,
                                    ),
                                    CasesWidget(
                                      title: 'Active',
                                      cases: _cases.confirmed,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CasesWidget(
                                      title: 'Deaths',
                                      cases: _cases.deaths,
                                    ),
                                    CasesWidget(
                                      title: 'Recovered',
                                      cases: _cases.recovered,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            secondChild: const Center(
                              child: CupertinoActivityIndicator(),
                            ),
                            layoutBuilder: (topChild, topChildKey, bottomChild,
                                    bottomChildKey) =>
                                topChild,
                            crossFadeState: _cases.confirmed != null
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 1200),
                            alignment: Alignment.center,
                            firstCurve: Curves.ease,
                          )),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      'News',
                      style: TextStyle(
                          color: Palette.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Lottie.asset('assets/globe1.json',
                        height: 20, frameRate: FrameRate.max)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocConsumer<NewsBloc, NewsState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    final List<News> _news = state.listOfNews;
                    return AnimatedCrossFade(
                      firstChild: Card(
                        color: Palette.greyColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return NewsWidget(news: _news[index]);
                          },
                        ),
                      ),
                      secondChild: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            'Gathering latest news...\nThis might take a while',
                            style: TextStyle(
                                color: Palette.whiteColor.withOpacity(0.4),
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      layoutBuilder: (topChild, topChildKey, bottomChild,
                              bottomChildKey) =>
                          topChild,
                      crossFadeState: _news.isNotEmpty
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 1200),
                      firstCurve: Curves.ease,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
