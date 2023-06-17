import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';

class NewUserVerSearchDialog extends StatefulWidget { // 상태 변경시켜주는거
  @override
  _NewUserVerSearchDialogState createState() => _NewUserVerSearchDialogState();
}

class _NewUserVerSearchDialogState extends State<NewUserVerSearchDialog> {
  String? foodTaste;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('입문자용'), //제목
      content: Container(
        width: double.maxFinite, // 사이즈 채우는거
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min, // 얘도 사이즈 채우는거
            children: [
              DropdownButtonFormField<String>( // 이게 목록 나타나게 해주는거
                value: null, //기본값은 아무것도 없다
                items: [
                  DropdownMenuItem<String>( // 벨류값 설정해주고 텍스트 입히는거
                    value: '레드 와인',
                    child: Text('레드 와인'),
                  ),
                  DropdownMenuItem<String>(
                    value: '화이트 와인',
                    child: Text('화이트 와인'),
                  ),
                  DropdownMenuItem<String>(
                    value: '디저트 와인',
                    child: Text('디저트 와인'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    foodTaste = value; //이거를 설정하면 내가 목록을 선택하면 그 목록이 화면에 표시되게 하는거
                  });
                },
                decoration: InputDecoration(
                  labelText: '와인 종류',
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: null,
                items: [
                  DropdownMenuItem<String>(
                    value: '한식',
                    child: Text('한식'),
                  ),
                  DropdownMenuItem<String>(
                    value: '일식',
                    child: Text('일식'),
                  ),
                  DropdownMenuItem<String>(
                    value: '양식',
                    child: Text('양식'),
                  ),
                  DropdownMenuItem<String>(
                    value: '디저트',
                    child: Text('디저트'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    foodTaste = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: '음식 선택',
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: null,
                items: [
                  DropdownMenuItem<String>(
                    value: '달콤',
                    child: Text('달콤'),
                  ),
                  DropdownMenuItem<String>(
                    value: '보통',
                    child: Text('보통'),
                  ),
                  DropdownMenuItem<String>(
                    value: '약간 매움',
                    child: Text('약간 매움'),
                  ),
                  DropdownMenuItem<String>(
                    value: '매움',
                    child: Text('매움'),
                  ),
                ],
                onChanged: (String? value) {
                  // 목록에서 선택한뒤 바뀌게 하는 로직
                },
                decoration: InputDecoration(
                  labelText: '음식의 맵기',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // 검색 버튼을 오른쪽에 배치하는거
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 검색 버튼 누르면 생기게 하는 로직
                    },
                    child: Text('검색'),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // 닫기
                    },
                    child: Text('닫기'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
