# toonflix

A new Flutter project.
- [Nomadcoders](https://nomadcoders.co/flutter-for-beginners)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Flutter 소개

Flutter, Dart는 운영체제와 직접 소통하지 않음
안드로이드나 Swift는 직접 소통하여 운영체제가 버튼같은것을 만들어줌

Flutter는 UI를 렌더링해줄 엔진이 있음 = 비디오 게임 엔진이나 Unity 엔진같은 개념임
Flutter는 엔진이 버튼같은것을 만들어줌
운영체제는 엔진만 운영함

엔진은 JVM과 비슷한 역할을 함

runner 프로젝트가 엔진을 동작시키고 엔진이 코드를 실행함

Flutter의 단점중하나는 각각의 플랫폼(Ios, android)의 native위젯을 사용할 수 없음 → 앱이 좀 부자연해 보임
Embedder = 플랫폼에 특정한 기능 제공

React Native vs Flutter
네이티브 앱의 기능을 사용하고 싶을때 React Native를 사용하는 것을 추천함
디테일한 디자인, 애니메이션 기능등을 사용하고 싶을때는 Flutter를 추천함

Flutter는 화면상의 모든 것을 자유자재로 다룰 수 있음

## Flutter 위젯

Widget = UI를 만드는 레고 블럭 같은 개념

많은 위젯이 있지만 모두 외워야 한다고 생각하지 않아도 됨

Wiget을 만든다는 것 = Class를 만든다는 것

NamedParameter를 주로 사용함 ⇒ required constructor 활용

Flutter에서 build 메서드를 통해 위젯을 만듬
root App Widget은 MaterialApp(구글) 혹은 CupertinoApp(애플)을 리턴해야함
Flutter는 구글에서 개발하였기에 MaterialApp이 나음
모바일 앱은 Scaffold 구조를 가져야함

Stateless Widget = build 메서드를 통해 UI를 표출함, 데이터를 가지고 있지않음

Stateful widget = 데이터가 변경될때 UI를 변경함