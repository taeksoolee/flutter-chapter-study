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

## Template Code
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
## Hotreload
-  `build` 함수 변경을 감지한다.