import 'package:winesvcpro/lendingpage.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
        home: LandingPage(), // 랜딩페이지가 맨 처음 뜨게 만드는거
        debugShowCheckedModeBanner: false, // 화면 상단 오른쪽에 생기는 리본 없애는거
      );

}
}

