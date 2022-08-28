# random_number_generator

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

## ❄️ Slider Widget

- int 값을 유동적으로 선택할 수 있는 UI Widget이다.

```dart
  Slider(
    value: maxNumber.toDouble(),
    min: 1000,
    max: 100000,
    onChanged: onChangedSlide,
  )
```

## Navigator

- 스크린 이동에 사용한다.

1. home_screen.dart

```dart
// 1. navigator를 생성한다.
final navigator = Navigator.of(context); // BuildContext context

//2 새로운 screen을 생성하고 해당 screen이 종료될때 데이터를 전달받는다. screen이 언제 닫힐지 알 수 없으므로 await 키워드를 사용하여 정의한다.
final result = await navigator // result is int type
  // generic 반환값(생성된 Screen에서 pop할때 전달되는 데이터 타입)을 설정한다.
  // 생성된 screen 에서 navigator.pop으로 넘겨준 인자를 result로 반환한다.
  .push<int>(
    // 새로운 스크린을 build 하는 build 함수를 설정한다.
    builder: (BuildContext context) {
      return OtherScreen(some: some); // 현재 스크린에서 이동하는 스크린으로 데이터를 전달할때는 파라미터를 사용한다.
    },
  );

//3. 다른 screen에서 전달받은 값을 사용할 수 있다.
print(result);
```

2. other_screen.dart

```dart
int someData = 1;

// 1. 현재 스크린을 종료하며 이 screen을 생성한 screen에 데이터를 전달한다.
Navigator.of(context)
  .pop(someData);
```

## flutter_native_splash

- splash screen을 간편하게 구현한다.
- 상세한 ui 구현은 어려울 수 있어 보인다.

### 사용방법

1. flutter_native_splash 설치한다.

```shell
flutter pub add flutter_native_splash --dev
```

2. splash_screen 이미지 다운로드 - 프로젝트에 추가한다.
3. pubspec.yaml 설정을 추가한다.

```yaml
# ...
flutter_native_splash:
  color: "#2D2D33" # primary-color
  image: assets/splash/one_char.png # 추가한 이미지 파일 경로
  # fullscreen: true
  ios_content_mode: center
```

4. splash_screen을 적용한다.

```shell
flutter pub run flutter_native_splash:create
```
