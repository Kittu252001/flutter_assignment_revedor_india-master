// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_assignment_revedor_india/screens/Homepage.dart';
import 'package:flutter_assignment_revedor_india/screens/LoginPage.dart';
import 'package:flutter_assignment_revedor_india/screens/Splashscreen.dart';

// import 'screens/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get kPrimaryColor => null;

  // This widget is the root of your application.
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
