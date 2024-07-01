import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // widget은 ID같은 식별자 역할을 하는 key가 존재함
  //Flutter가 위젯을 빠르게 찾기(식별하기)위해 존재함

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
