void hello() {
  print('Hello World');
}

void variable() {
  var name = '이택수'; // var로 선언시 우항에 값에 따라 타입이 지정된다.
  print(name);

  name = 'Flutter';
  print(name);

// compile error : 사용하지 않아도 실행 안됨
  // var name = 'Dart!'; // Error: 'name' is already declared in this scope.
}

void variableType() {
  // [variable].runtimeType : 해당 변수에 타입을 문자열로 반환한다.

// primitive
  var i = 1;
  print(i.runtimeType); // int

  var d = .5;
  print(d.runtimeType); // double 

  var b = true;
  print(b.runtimeType); // bool

// object (relative)
  var str = 'string';
  print(str.runtimeType); // String

  var arr = [1,2,3];
  print(arr.runtimeType); // List<int>

  Map<String, Map<String, List<double>>> m1 = {};
  print(m1.runtimeType); // InternalLinkedHashMap<String, Map<String, List<double>>>
  // Map은 인터페이스(?)

  var m2 = {};
  print(m2.runtimeType); // _InternalLinkedHashMap<dynamic, dynamic>

// dynamic type
  dynamic d1 = 1; // int
  print(d1.runtimeType);
  d1 = 'str'; // int -> String
  print(d1.runtimeType);
}

void template() {
  var str1 = '가';
  var str2 = '나';
  var str3 = '디';

  var map = {'a': '가'};
// $var
  print('$str1');
  print('$str1$str2$str3');

  print('${map['a']}');

// '${var}' : 표현식에 사용
  // print('$map['a']'); // error!
  print('${map['a']}');
}

void nullable() {
// ? : nullable로 변수 선언
  // String s1 = null; // error!
  String? s1 = null;

  print(s1);

// ! : nullable 변수에서 null 이 아님을 확신한다.
  String s2 = 'abc'; // 
  print(s2!);
  // 아래경고 나오는 데 버전 차이인것 같다.
  // : Warning: Operand of null-aware operation '!' has type 'String' which excludes null.
}

void compareFinalAndConst() {
// 공통점 : 재할당이 불가하다. 상수선언
  final String n1 = 'lts';
  // n1 = 'ts'; // error

  const String n2 = 'lts';
  // n2 = 'ts'; // error

// 차이점 : 상수 선언시 final은 빌드타임에 몰라도 되고, const 알아야 한다.
//        const는 진짜 상수 정의할때 사용하고, final은 할당된 값을 변경하지 않고자 할 때 사용하면 될것 같다.
  final DateTime now1 = DateTime.now();
  print(now1);

  // const는 빌드할때 값을 알아야하므로 호출할때마다 변경되는 now값은 사용할 수 없다.
  // const DateTime now2 = DateTime.now(); // error
  // print(now2);
}

void operator() {
  int n = 2;
// 산술 연산
  print(n);
  print(n + 2);
  print(n - 2);
  print(n * 2);
  print(n / 2); // return dobule
  print(n % 2);

  print(n++); // print(2) -> ++(3)
  print(n--); // print(3) -> --(2)
  print(n); // 2

// 대입 연산

// 비교 연산
  
}

void main() {
  // hello();
  // variable();
  // variableType(); // runtimeType (Object 정의 함수)
  // template(); // '${expression}' '$varibale'

  /* 
   * nullable: null이 될수 있는 변수 (Type? name = 'val' 형식으로 선언)
   * non-nullable: null이 될수 없는 변수(default)
  */
  // nullable(); 

  // compareFinalAndConst(); // buildtime의 값을 안다면 const 모른다면 final을 사용한다.
  operator();
}

/*
  세미콜론은 강제이다.
*/
