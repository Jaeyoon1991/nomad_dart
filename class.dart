// class 에서는 타입을 반드시 명시해야 한다.

// 4.7 Abstarct Class
abstract class Human {
  void walk();
}

//4.6 enums
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

// 4.0 Your first darat class
class Player {
  String name = 'nico';
  int xp = 1500;
  final String student = 'jaeyoon';

// this. 를 굳이 사용하지 않아도 된다.
  void sayHello() {
    print("hello, my name is $name ! ");
  }
}

// 4.1 Constructors
class Player2 {
  // class 에서는 초기화를 바로 해줘야하는데 late 를 달아주면 나중에 해줘도 된다.
  late String name;
  late int xp;

  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("hello, my name is $name ! ");
  }
}

class Player3 {
  late String name;
  late int xp;

  Player3(this.name, this.xp);

  void sayHello() {
    print("hello, my name is $name !");
  }
}

// 4.2 Named Constructor Parameters
class Player4 {
  late String name;
  late int xp;
  late String team;
  late int age;

  Player4(
    this.name,
    this.xp,
    this.team,
    this.age,
  );

  void sayHello() {
    print(
        "hello, my name is $name, and $xp, my tema is $team, and i'm $age years");
  }
}

class Player5 {
  final String name;
  int xp;
  String team;
  int age;

  Player5(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print(
        "hello, my name is $name, and $xp, my tema is $team, and i'm $age years");
  }
}

// 4.3 Named Constructor
class Player6 {
  final String name;
  int xp, age;
  String team;

  Player6(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player6.createBluePlayer({
    required String name,
    required int age,
  })  : this.name = name,
        this.age = age,
        this.team = 'blue',
        this.xp = 0;

  Player6.createRedPlayer(
    String name,
    int age,
  )   : this.name = name,
        this.age = age,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print(
        "hello, my name is $name, and $xp, my tema is $team, and i'm $age years");
  }
}

// 4.4 Recap
class Player7 {
  final String name;
  int xp;
  String team;

  Player7.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("hello, my name is $name, and my xp is $xp, and my team is $team");
  }
}

//4.5 Casecade Notation
class Player8 extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player8({
    required this.name,
    required this.xp,
    required this.team,
  });

  @override
  void walk() {
    // TODO: implement walk
    print("I'm Human");
  }

  void sayHello() {
    print("hi my name is $name");
  }
}

// 추상클래스는 특정 메서드를 강제한다.
class Coach extends Human {
  void walk() {
    print("I'm coach");
  }
}

void main() {
  var player = Player();
  print(player.name);
  player.name = 'lalal';
  print(player.name);

  // student는 final이기 때문에 name 처럼 수정이 불가능하다.
  player.sayHello();

  var player2 = Player2(
    'emma',
    2000,
  );
  player2.sayHello();

  var player3 = Player3(
    'harry',
    4000,
  );
  player3.sayHello();

  var player4 = Player4(
    'jas',
    3000,
    'red',
    39,
  );
  player4.sayHello();

  var player5 = Player5(
    name: "nico",
    xp: 3000,
    team: 'blue',
    age: 30,
  );
  player5.sayHello();

  var BluePlayer = Player6.createBluePlayer(
    name: 'haa',
    age: 34,
  );

  var RedPlayer = Player6.createRedPlayer(
    'dodo',
    33,
  );

  var apiData = [
    {
      'name': 'nico',
      'team': 'red',
      'xp': 1000,
    },
    {
      'name': 'anna',
      'team': 'blue',
      'xp': 3000,
    },
    {
      'name': 'coco',
      'team': 'green',
      'xp': 5000,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player7.fromJson(playerJson);
    player.sayHello();
  });

  var player8 = Player8(
    name: 'nico',
    xp: XPLevel.beginner,
    team: Team.red,
  )
    ..name = 'les'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
