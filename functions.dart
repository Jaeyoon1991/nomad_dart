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
}
