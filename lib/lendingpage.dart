import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winesvcpro/main.dart';

import 'mainpage.dart';

void main() {
  runApp(MaterialApp(
    home: LandingPage(),
  ));
}

class LandingPage extends StatefulWidget { // 랜딩 페이지여서 필요한거 상태변경 시켜주는거
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> { // state가 상속 받는거
  @override
  void initState() {
    Timer(Duration(seconds: 1), () { // timer로 몇초뒤에 mainpage로 넘어가라는 명령어
      Get.to(MainPage());
    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           height: double.infinity, //가로 세로 풀 사이즈로 채워라
            width: double.infinity,
            child: Image.asset('assets/viewpage.png', fit: BoxFit.fill), // 이미지 사이즈 FIIL로 한다
          )
        ],
      ),
    );
  }
}
