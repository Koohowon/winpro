
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '와인 추천 서비스 APP',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            color: Colors.black,
            onPressed: () {
              _onCallButtonPressed(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                );
                // _launchURL('https://example.com/pro');
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: Text(
                  '프로 버전',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                );
                // _launchURL('https://example.com/beginner');
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  '초보 버전',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '(주)주류주류',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "대표 : 구호원",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "사업자 번호 : 211-00-12345",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "본사 : 부산 광역시 해운대구 ",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "운영시간 : 10:00 ~ 18:00 주말/공휴일 휴무",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "와인 서비스 추천 애플리케이션이며 판매는 하지 않고 있습니다.",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  void _onCallButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('고객센터'),
          content: Text('TEL : 010 - 7387 - 7262'),
          actions: <Widget>[
            // TextButton(
            //   child: Text('전화걸기'),
            //  onPressed: () => _launchURL('tel://01073877262'),
            //   //onPressed: () => _launchURL('tel://01073877262'),
            // ),
            TextButton(
              child: Text('닫기'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

// void _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


}
