import 'package:cowin/core/routes/route.gr.dart' as route;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cowin',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        // accentColor:
        accentColorBrightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ).copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      )),
      debugShowCheckedModeBanner: false,

      // home: IndexPage(),
      onGenerateRoute: route.Router.onGenerateRoute,
      initialRoute: route.Router.splashPage,
      navigatorKey: route.Router.navigator.key,
    );
  }
}

//Registration of State Managements
final List<SingleChildStatelessWidget> _providers = [];
