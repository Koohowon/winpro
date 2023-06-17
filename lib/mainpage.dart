import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NewUserVerSearchDialog.dart';
import 'ProVerSearchDialog.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // 맨위 중앙 하단으로 나눈거
      appBar: AppBar( // 맨위에
        centerTitle: true, // 제목 중앙에 둔다
        title: Text(
          '와인 추천 서비스 APP',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop(); // 뒤로 가기 버튼 눌렀을때 창 닫게 해준다
            // 나는 지금 뒤로가기 누르면 mainpage로 넘어감
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call), // 고객센터 나타나게 하는거
            color: Colors.black,
            onPressed: () {
              _onCallButtonPressed(context); //이거 고객센터 뜨게 하는 함수 그니깐 클릭하면 이 함수로 가라
            },
          ),
        ],
      ),
      body: Column( // 중앙
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                _showProVerSearchDialog(context); //prover
              },
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // 이거 없으니깐 mainpage 안나옴
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // start로 왼쪽으로 정렬
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/prover.jpg',
                              width: 500,
                              height: 5,
                              fit: BoxFit.fill, // fill로 사이즈 맞추기
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Container(
                        child: Column(
                          children: [ //이미지 옆에 텍스트
                            Text(
                              'Pro ver 와인 추천 서비스',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '전문가용입니다 (검색을 원할 시 클릭하여 주시길 바랍니다)',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                _showNewUserVerSearchDialog(context); //newuserver
              },
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // 왼쪽으로 이동
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/newver.jpg',
                              width: 500,
                              height: 5,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'New User ver 와인 추천 서비스',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '입문자용입니다 (검색을 원할 시 클릭하여 주시길 바랍니다)',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar( // 하단
        child: Column(
          mainAxisSize: MainAxisSize.min, //필요한 만큼의 사이즈만 채운다
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '(주)주류주류',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "대표: 구호원",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "사업자 번호: 211-00-12345",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "본사: 부산 광역시 해운대구",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "운영시간: 10:00 ~ 18:00 주말/공휴일 휴무",
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

  void _onCallButtonPressed(BuildContext context) { //여기가 전화버튼 눌렀을때 나오게 하는거
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('고객센터'),
          content: Text('TEL: 010-7387-7262'),
          actions: <Widget>[
            TextButton(
              child: Text('확인'),
              onPressed: () => Navigator.pop(context) // 클릭하면 닫아짐
            ),
          ],
        );
      },
    );
  }

  void _showProVerSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProVerSearchDialog(); // 클래스를 나눠놔서 prover으로 넘어가는거
      },
    );
  }

  void _showNewUserVerSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NewUserVerSearchDialog(); // newver으로 넘어가는거
      },
    );
  }
}
