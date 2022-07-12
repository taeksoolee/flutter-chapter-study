import 'dart:async';

import '../utils.dart';

void syncronous() {
  printStr(1);
  printStr(2);
}

void future() {
  Future<String> s = Future.value('str');
  Future<int> i = Future.value(0);
  Future<bool> b = Future.value(true);

  s.then((v) {
    print(v);
  });
}

void futurePrint() {
  delayedPrintStr(1);
  delayedPrintStr(2);
}

void asyncFuturePrint() async {
  await asyncDelayedPrintStr(1);
  await asyncDelayedPrintStr(2);
}

void stream() {
  final controller = StreamController();
  final stream  = controller.stream;

  final streamListener = stream.listen((event) {
    print('listener : $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}

void asBroadcastStream() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream();

  stream.listen((event) {
    print('listener1 : $event');
  });

  stream.listen((event) {
    print('listener2 : $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}

void asnycYield() {
  calculate(1).listen((event) {
    print('calc1 : $event');
  });

  calculate(2).listen((event) {
    print('calc2 : $event');
  });
}

void main() {
  // syncronous();

  // future();
  // futurePrint();
  // asyncFuturePrint();

  // stream();
  // asBroadcastStream();
  asnycYield();
}