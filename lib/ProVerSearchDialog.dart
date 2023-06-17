
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';

class ProVerSearchDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('전문가용'), // 제목이 전문가용
      content: Container( // 컨테이너 박스 생성
        width: double.maxFinite, // 사이즈 다 채운다
        child: Form( //폼으로 해야지 목록을 생성할수 있음
          child: Column( // ROW가 아닌 열로 처리한다 위에서 아래로
            mainAxisSize: MainAxisSize.min, //여백 없애는거
            children: [
              DropdownButtonFormField<String>( // 이게 목록 만들어 주는거
                value: null,
                items: [
                  DropdownMenuItem<String>(
                    value: '레드 와인', // 벨류값을 레드 와인으로 준다
                    child: Text('레드 와인'), //레드 와인이라는 텍스트
                  ),
                  DropdownMenuItem<String>(
                    value: '화이트 와인', // 벨류값을 화이트 와인으로 준다
                    child: Text('화이트 와인'), // 화이트 와인이라는 텍스트
                  ),
                  DropdownMenuItem<String>(
                    value: '디저트 와인', // 벨류값을 디저트 와인으로 준다 만약 이게 없어지면 디저트와인 자체가 그냥 기본값으로 나옴
                    child: Text('디저트 와인'),// 디저트 와인이라는 텍스트
                  ),
                ],
                onChanged: (value) { // 벨류값들(목록값)이 선택 되었을때 뭘로 변경해라는 로직
                  // 근데 너무 복잡해서 솔직히 포기...
                },
                decoration: InputDecoration( // 이게 약간 뼈대 만든다고 해야나 외관 만드는거
                  labelText: '종류', // 텍스트 형식으로 만드는 종류라는 글자가 나타나게 만듬
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '생산지',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '품종',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '당도',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // 검색 버튼을 오른쪽으로 위치시키게 하는거
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 검색 버튼을 눌렀을때 변경되게 해라
                    },
                    child: Text('검색'),
                  ),
                  SizedBox(width: 8), // 검색 버튼과 닫기 버튼 사이 간격
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // 닫기 버튼 누르면 POP되게 하는거
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
