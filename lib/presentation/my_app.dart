import 'package:cowin/application/cases/cases_bloc.dart';
import 'package:cowin/application/news/news_bloc.dart';
import 'package:cowin/core/routes/route.gr.dart' as route;
import 'package:cowin/infrastructure/cases/case_repo.dart';
import 'package:cowin/infrastructure/news/news_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

import 'core/palette.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Status bar CSS
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Palette.backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return MultiProvider(
      providers: _providers,
      child: MaterialApp(
        title: 'Cowin',
        theme: ThemeData(
          primaryColor: Palette.greyColor,
          backgroundColor: Palette.backgroundColor,
          accentColor: Palette.greyColor,
          accentColorBrightness: Brightness.light,
          textTheme: GoogleFonts.nunitoSansTextTheme(),
        ).copyWith(
            pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        )),
        debugShowCheckedModeBanner: false,

        // home: IndexPage(),
        onGenerateRoute: route.Router.onGenerateRoute,
        initialRoute: route.Router.homePage,
        navigatorKey: route.Router.navigator.key,
      ),
    );
  }
}

//Registration of State Managements
final List<SingleChildStatelessWidget> _providers = [
  BlocProvider(
    create: (_) => CasesBloc(CaseRepo())
      ..add(const GetTotalCases(
          'India')), //injectable is causing some build issues
  ),
  BlocProvider(
    create: (_) => NewsBloc(NewsRepo())
      ..add(const GetLatesNews()), //injectable is causing some build issues
  ),
];
