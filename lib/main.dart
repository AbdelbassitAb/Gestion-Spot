import 'package:flutter/material.dart';
import 'package:spot_manag/Intro.dart';
import 'package:spot_manag/home.dart';
import 'package:spot_manag/persons.dart';
import 'package:spot_manag/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Persons(),
    );
  }
}
