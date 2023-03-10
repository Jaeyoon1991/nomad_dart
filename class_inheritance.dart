// 4.9 Mixins
// mixin은 단순히 내부 프로퍼티를 이용할 수 있게만 할 뿐. 상속이랑 다르다.
// 생성자가 없는 클래스여야 한다.
class Strong {
  final double strongLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnn");
  }
}

class Tall {
  double heightLevel = 190.99;
}

class Player2 with Strong, QuickRunner, Tall {}

class Horse with QuickRunner, Tall {}

class Boy with Tall, Strong {
  final Team team;
  final String name;

  Boy({
    required this.team,
    required this.name,
  });
}

class Human {
  final String name;
  Human({
    required this.name,
  });
  void sayHello() {
    print("Hi, I'm $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team.name} team");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
  player.sayHello();

  var boy = Boy(team: Team.red, name: 'nico');
  boy.heightLevel = 19.22;
}
