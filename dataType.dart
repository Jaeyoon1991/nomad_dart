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

  // 2.2 String Interpolation
  var names = "jaeyoon";
  var ages = 10;
  var greeting =
      'Hello, my name is $name, nice to meet you. I\'m ${ages + 2}. ';
  print(greeting);

  // 2.3 Collection for
  var oldFriends = ['nico', 'hanna'];
  var newFriends = [
    'cathy',
    'jessy',
    'emma',
    for (var friend in oldFriends) "lovely $friend",
  ];
  print(newFriends);

  // 2.4 Maps
  // 모든 자료는 object로 부터 상속 받는다. object는 모든 자료형이 될 수 있다.
  var player = {
    'name': 'nico',
    'xp': 19.29,
    'superpower': false,
  };
  // 명시적으로 표시할 수 도 있다.
  Map<int, bool> players = {
    1: true,
    2: false,
    3: true,
  };

  Map<List<int>, bool> testplayers = {
    [1, 2, 3, 4]: true,
    [2, 3, 4, 5]: false
  };

  List<Map<String, Object>> mvp = [
    {
      "name": "jass",
      "age": 23,
      "xp": 1999.33,
    },
  ];

  // 2.5 Sets
  // Set은 중복을 허용하지 않는다.
  var NewNumbers = {
    1,
    2,
    3,
    4,
  };

  Set<int> News = {
    1,
    2,
    3,
    4,
  };
}
