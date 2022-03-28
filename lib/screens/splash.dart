import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home/home.dart';

import 'login.dart';
import '../widgets/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: wAppLoading());
  }

  void checkUserSementara(bool user) async {
    await Future.delayed(Duration(seconds: 2));

    //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => user ? Home() : Login()),
    );
  }
}
