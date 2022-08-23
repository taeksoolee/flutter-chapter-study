import '../clasess/value.dart';

void collectionCasting() {
  List<int> l = [1, 2, 3];
  print(l);
  List<dynamic> nullList = new List.filled(5, null);
  print(nullList);

// List -> Map
  Map m = l.asMap();
  

// 
  Iterable<dynamic> keys = m.keys;
  Iterable<dynamic> values = m.values;
  print(keys);
  print(values);

// Iterable -> List
  print(keys.toList());
  print(values.toList());

// List -> Set
  Set s1 = Set.from(l);
  // or 
  Set s2 = l.toSet();

  print(s1);
  print(s2);
}

void mapInList() {
  List<int> list = [1,2,3];
  
  final powerList = list.map((v) {
    return 'power is ${v * v}';
  }); // Iterable<dynamic>

  print(powerList);


  String numbers = '123456';
  List<String> jpgs = numbers
                        .split('')
                        .map((x) => '$x.jpg')
                        .toList();

  print(jpgs);
}

void mapInMap() {
  Map<String, String> m = {
    'a': '1',
    'b': '2',
  };

  final result = m.map((key, value) => MapEntry(key+key, value+value));
  print(result);

  print(m.keys.map((x) => x+x).toList());
  print(m.values.map((x) => x+x).toList());
}

void mapInSet() {
  List<int> l = [1,2,3];
  Set s = Set.from(l);

  final result = s.map((x) => 'x is $x').toSet();
  print(result);
}

void whereInList() {
  List<Map<String, String>> peoples = [
    {'id': '1', 'name': 'l'},
    {'id': '2', 'name': 'p'},
  ];

  print(peoples);

  final filteredPeoples = peoples.where((x) => x['id'] == '1').toList();
  print(filteredPeoples);
}

void reduceInList() {
  List<int> numbers = [1,3,5,7,9];
  print(numbers);

// reduce 함수는 list의 generic 타입을 반환 해야한다.
  final total = numbers.reduce((prev, next) => prev + next);
  print(total);

  List<String> words = ['안녕', '하', '세', '요'];
  final sentence = words.reduce((prev, next) => prev + next);
  print(sentence);

// String type을 반환하지 않으므로 오류
  // final count = words.reduce((prev, next) => prev.length + next.length);
}

void foldInList() {
  List<String> words = ['안녕', '하', '세', '요'];
  final count = words.fold<int>(0, (a, c) => a + c.length);
  print(count);
}

void casecadingOperator() {
  List<int> odd = [1,3,5];
  List<int> even = [2,4,6];

  print([odd, even]);
  print([...odd, ...even]);

  List<int> copyOdd = [...odd];
  print(copyOdd);
  print(odd == copyOdd); // false
}

void parseClassToMap() {
  List<Map<String, String>> peoples = [
		{ 'id': '1', 'name': 'lee' },
		{ 'id': '2', 'name': 'park' },
	];

  final parsedPeoples = peoples.map((x) => Value(id: x['id'], name: x['name'])).toList();

  for(Value p in parsedPeoples) {
    print(p);
  }
}

void main() {
  // collectionCasting();

  // mapInList();
  // mapInMap();
  // mapInSet();

  // whereInList();
  reduceInList();
  foldInList();

  casecadingOperator();
  parseClassToMap();
}
