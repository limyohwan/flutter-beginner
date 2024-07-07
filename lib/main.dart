import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // widget은 ID같은 식별자 역할을 하는 key가 존재함
  // Flutter가 위젯을 빠르게 찾기(식별하기)위해 존재함
  // ios나 android 파일을 변경하면 hot reloading이 안되므로 다시 빌드하여 시작해야함

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
