void list() {
  List<String> strList = ['이', '택', '수'];
  List<int> intList = [1, 2, 3];

  print(strList);
  print(intList);

  print(strList[1]);
  // print(strList[3]); // Uncaught Error: RangeError (index): Index out of range

// list property
  print(strList.length); // .length

  strList.add('?!'); // .add(value)
  print(strList);

  strList.remove('?!'); // .revmoe(value)
  // 존재하지 않는값을 인자로해도 오류는 발생하지 않는다.
  print(strList);

  int idx = strList.indexOf('택'); // .indexOf(value)
  print(idx);
}

void map() {
  Map<String, String> numberMap = {
    'one': '1',
    'two': '2',
    'three': '3',
  };
  print(numberMap); // read all
  print(numberMap['two']); // read one
  // print(numberMap);
  numberMap['four'] = '4'; // add
  // print(numberMap);
  numberMap['four'] = '4!!'; // set
  // print(numberMap);
  numberMap.remove('four'); // remove
  // print(numberMap);

  //concat
  numberMap.addAll({
    'five': '5',
  });

  Iterable<MapEntry<String, String>> entries = numberMap.entries;
  print(entries);
  Iterable<String> keys = numberMap.keys;
  print(keys);
  Iterable<String> values = numberMap.values;
  print(values);
}

void set() {
  final Set<String> alphabetSet = {'L', 'T', 'S'};
  print(alphabetSet);

  alphabetSet.add('!'); // add
  print(alphabetSet);

  bool isContain = alphabetSet.contains('!');
  print(isContain);
}

void main() {
  // list();
  // map();
  set();
}
