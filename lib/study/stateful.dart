import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  // statefulWidget은 살아있음, 생명주기를 가짐, 이벤트에 반응함
  const StatefulApp({super.key});

  @override
  State<StatefulApp> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }
  // int counter = 0; // 데이터이며 dart 클래스의 프로퍼티임, 플러터의 기능은 아님
  // List<int> numbers = [];

  // void onClicked() {
  //   setState(() {
  //     // setState 함수를 사용하여 상태 변화를 알려서 새로고침할 수 있도록 함
  //     numbers.add(counter++);
  //   });
  // counter++;
  // setState(() {}); setState를 호출하면 새롭게 build메서드를 호출하는 것이므로 굳이 안에 상태 변경된 값을 넣지 않아도 되지만 넣는것이 좋다.
  // flutter는 React만큼 state가 중요하지않음
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ), // 애플리케이션을 위한 색상 스타일 등을 정의
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye))
              // for (var n in numbers) Text('$n'),
              // Text(
              //   '$counter',
              //   style: const TextStyle(
              //     fontSize: 30,
              //   ),
              // ),
              // IconButton(
              //   iconSize: 40,
              //   onPressed: onClicked,
              //   icon: const Icon(Icons.add_box_rounded),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    // 부모의 의존적인 변수를 초기화해야하는 경우 사용, build 메서드보다 먼저 호출되며 오직 단한번 호출됨
    super.initState();
  }

  @override
  void dispose() {
    // 위젯이 스크린에서 제거될때 실행함, 무언가를 취소하는 메서드
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // BuildContext는 모든 상위 요소들(widget tree)에 대한 정보를 담고있음, 실제로는 더 복잡함
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
