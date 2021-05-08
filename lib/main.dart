import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'injection.dart';
import 'presentation/my_app.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}
