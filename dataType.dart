void main() {
  String name = 'jaeyoon';
  bool alive = true;
  int age = 12;
  double score = 1.2;

  // int와 double은 num을 상속한다.
  num height = 10;
  height = 11.4;

  // list를 표현하는 두 가지 방식
  var numbers = [1, 2, 3, 4];
  List<int> newNumbers = [1, 2, 3, 4];
  numbers.add(5);

  // 뒤에 ,를 붙이면 보기 쉽게 정렬된다.
  // collection if
  bool giveMeFive = true;
  var testNumbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];

  if (giveMeFive) {
    testNumbers.add(6);
  }

  print(testNumbers);
}
