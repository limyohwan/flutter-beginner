import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) { // Flutter에서 build 메서드를 통해 위젯을 만듬
    // root App Widget은 MaterialApp(구글) 혹은 CupertinoApp(애플)을 리턴해야함
    // Flutter는 구글에서 개발하였기에 MaterialApp이 나음
    // 모바일 앱은 Scaffold 구조를 가져야함
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
    // return CupertinoApp();
  }
}
