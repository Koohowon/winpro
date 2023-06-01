import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winesvcpro/main.dart';

import 'mainpage.dart';

void main() {
  runApp(MaterialApp(
    home: LandingPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(MainPage());
    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
           height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/choicewine.png',fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
