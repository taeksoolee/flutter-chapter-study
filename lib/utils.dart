void printStr(int id) {
  print('ing $id');
  print('end $id');
}

void delayedPrintStr(int id) {
  print('start $id');

  Future.delayed(Duration(seconds: 2), () {
    print('ing $id');
  });

  print('end $id');
}

Future<void> asyncDelayedPrintStr(int id) async {
  print('start $id');

  await Future.delayed(Duration(seconds: 2), () {
    print('ing $id');
  });

  print('end $id');

  return;
}

// 
Stream<int> calculate(int number) async* {
  for(int i=0; i<3; i++) {
    yield i * number; // return Stream

    await Future.delayed(Duration(seconds: 1));
  }
}