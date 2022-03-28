import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home/home.dart';
import 'package:flutterapp/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
