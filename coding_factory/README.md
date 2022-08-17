# coding_factory

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---
# Hello World!
## Create Project
- 프로젝트명은 `_` 또는 `-`을 사용하여 작성한다.
- Organization : 배포시 사용하는 주소이다.
- Android Lang : Kotlin (최신)
- iOS Lang : Swift (최신)

## ❄️ MaterialApp, Scaffold, Center, Text Widget
- Template Code
```dart
import 'package:flutter/material.dart';

// MaterialApp -> Scaffold -> Center -> Text
void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "Hello World",
          )
        ),
      )
    )
  );
}
```

## Widget Tree

# Splash Image
## asset 설정
1. `/asset/*` 디렉토리에 미디어(이미지 등) 파일을 저장한다.
2. `pubspec.yaml` 파일 수정
``` yaml
# pubspec.yaml
# ...
flutter:
  assets:
    # - asset/img/logo.png
    - asset/img/ # 아래 디렉토리에 모든 파일 적용
# ...
```
3. 이미지 설치
``` shell
flutter pub get
```
4. ❄️ Image Widget
- Widget 사용예시
```dart
Image.asset('asset/img/logo.png')
```
## Hotreload
-  `build` 함수 변경을 감지한다.


# Row & Column Widget
## import
```dart
import 'package:[package_name]/to/path/[file.dart]'
// package_name은 pubspec.name 에서 확인한다.
```

## ❄️ Container Widget
- 위젯을 묶는다.

## ❄️ SafeArea Widget
- 상태바, 하단바를 안쪽으로 코딩할 수 있다.
- top, left, right, bottom을 bool 값으로 적용할 영역을 선택한다. (default: true)

## ❄️ Row, Column Widget
- 주축에서는 남는 공간을 모두 차지한다.
- 반대축에서는 최소한의 공간을 차지한다. (반대축을 모두 채우고 싶으면 [width | height]: MediaQuery.of(context).size.[width | height])

- MainAxisAlignment - 주축 정렬
  - start, end, center, spaceBetween, spaceEvenly, spaceAround

- CrossAxisAlignment - 반대축 정렬
  - start, end, center(default), stretch(자식위젯의 크기를 무시), baseline(글자 정렬)

- MainAxisSize - 주축이 남는 공간을 차지하지 않게 한다.
  - max(default), min

## ❄️ Expended Widget
- Row, Column 위젯의 children으로만 사용 가능하다.
- 남아있는 영역을 모두 차지
- children에 Expended, Flexible을 여러개(n개) 사용했을 경우 n분의 1로 배율을 지정한다. (flex 속성으로 배율 수정 가능)
- flex - default: 1
  - 공간을 나누는 비율

## ❄️ Flexible Widget
- Row, Column 위젯의 children으로만 사용 가능하다.
- Expended Widget과 다르게 child의 가로 또는 세로를 늘리지 않는다. 
- 공간은 차지하지만 남는 비율을 버린다.