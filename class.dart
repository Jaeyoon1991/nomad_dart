// class 에서는 타입을 반드시 명시해야 한다.

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

void main() {
  var player = Player();
  print(player.name);
  player.name = 'lalal';
  print(player.name);
  // student는 final이기 때문에 name 처럼 수정이 불가능하다.
  player.sayHello();

  var player2 = Player2('emma', 2000);
  player2.sayHello();

  var player3 = Player3('harry', 4000);
  player3.sayHello();
}
