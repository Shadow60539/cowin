// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cowin/presentation/home/pages/home_page.dart';
import 'package:cowin/presentation/preventation/pages/preventation_page.dart';

class Router {
  static const homePage = '/';
  static const preventationPage = '/preventation-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomePage(),
          settings: settings,
        );
      case Router.preventationPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => PreventionPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
