void ifStatement() {
  int number = 3;

  if (number % 3 == 0) {
    print('rest is 0');
  } else if (number % 3 == 1) {
    print('rest is 1');
  } else {
    print('rest is not 0 ro 1');
  }
}

void switchStatement() {
  int number = 3;

  switch (number % 3) {
    case 0:
      print('rest is 0');
      break;
    case 1:
      print('rest is 1');
      break;
    default:
      print('reset is not 0 or 1');
      break;
  }
}

void loopForStatement() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

// total example
  int total = 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print('total is $total');

  // for... in
  for (int number in numbers) {
    print(number);
  }

  // continue in for
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}

void loopWhileStatement() {
  int total = 0;
  while (total < 10) {
    total++;
  }
  print('total is $total in while');

  // do... while
  total = 0;
  do {
    total++;
  } while (total < 10);
  print('total is $total in do while');

  // while ... break
  total = 0;
  while (total < 10) {
    total++;
    if (total == 5) {
      break;
    }
  }
  print('total is $total in while... break');
}

void main() {
  // ifStatement();
  // switchStatement();
  // loopForStatement();
  loopWhileStatement();
}
