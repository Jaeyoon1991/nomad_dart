// 3.0 Defining a function
String sayHello(String name) {
  return 'Hello, my name is $name';
}

String sayGoodbye(String name) => 'Good by $name';

num plus(int a, int b) => a + b;

// 3.1 Named Parameter
String sayWhoIam(String name, int age, String country) {
  return "hello i'm $name, i'm $age and i'm from $country";
}

// 초기화 값을 넣어주기(null 방지)
String sayWhoIam2({
  String name = 'anno',
  int age = 12,
  String country = "kor",
}) {
  return "hello i'm $name, i'm $age and i'm from $country";
}

// 또는 required를 붙여주기(null 방지)
String sayWhoIam3({
  required String name,
  required int age,
  required country,
}) {
  return "hello i'm $name, i'm $age and i'm from $country";
}

// 3.3 optional positional parameter
String sayBye(String name, int age, [String? country = 'cuba']) =>
    "hello, I'm $name, I'm $age, and I'm from $country";

// 3.4 QQ Operator
String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANNO';
}

String capitalizeNmae2(String? name) =>
    name != null ? name.toUpperCase() : 'ANNO';
String capitalizeNmae3(String? name) => name?.toUpperCase() ?? 'ANNO';

// 3.5 typedef
typedef ListOfInt = List<int>;
ListOfInt reverseListOfNumbers(ListOfInt list) {
  var reverseList = list.reversed;
  return reverseList.toList();
}

typedef UserInfo = Map<String, String>;
String sayHi(UserInfo) {
  return "Hi, ${UserInfo['name']}";
}

void main() {
  print(sayHello('jaeyoon'));
  print(sayGoodbye('nico'));
  print(plus(3, 4));

  print(sayWhoIam(
    'jack',
    33,
    'korea',
  ));
  print(sayWhoIam2(
    age: 12,
    name: "hanna",
    country: "korea",
  ));
  print(sayWhoIam3(
    name: 'frank',
    age: 30,
    country: 'use',
  ));

  print(sayBye(
    'nico',
    14,
  ));
  // 3.4 QQ Operation
  // subject 가 null이면 math를 할당해라.
  String? subject;
  subject ??= 'math';
  subject ??= 'english';
  print(subject);

  // 3.5 typedef
  print(sayHi({"name": "jaeyon"}));
}
