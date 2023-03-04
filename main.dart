// main은 도입부. main이 없으면 실행되지 않는다.
void main() {
  // 변수 타입을 지정할 필요가 없다. 값에 따라 자동으로 지정된다.
  // 함수나 메서드의 지역변수를 선언할 때 var를 사용한다.
  var name = '건영';
  // 변수를 선언하면 그 변수에 다른 타입의 값을 덮을 수 없다.
  // name = 1; => 불가능
  name = '재윤';

  // 변수 타입을 미리 지정하는게 오류를 줄여줄 수 있다.
  // 클래스에셔 변수나 프로퍼티를 선언할 때 지정한다.
  String names = '재윤s';

  // dynamic => 어떤 타입도 될 수 있다.
  // dynamic은 타입이 아닌, 타입 지정을 잠시 미룬다는 표시일 뿐이다.
  // 한 번 값이 할당 되어도 바뀔 수 있다.
  dynamic ages;
  var age;
  age = "12";
  age = 12;
  age = true;

  // 변수타입에 ? 를  붙이면 null 이 할당 될 수 있다.
  String? teacher = 'nico';
  teacher = null;

  if (teacher != null) {
    teacher.isNotEmpty;
  }
  // ? 표는 변수 값이 null 이 될 수도 있다는 것을 암시한다. 위의 조건문과 같은 기능
  teacher?.isNotEmpty;

  // final로 선언한 변수는 한 번 값이 할당되면 수정할 수 없다.
  final student = "재윤";

  // late : 변수 값을 나중에 할당할 수 있다.
  // late가 붙지 않은 초기화 되지 않은 변수는 접근이 불가능하다.
  // late가 붙은 초기화 되지 않은 변수는 null값으로 접근이 가능하다.
  // class내에서 final이 붙은 변수는 바로 초기화 해야한다.
  // class내에서 final이 붙지 않은 변수는 바로 초기화하지 않아도 된다.
  late final String salesman;

  // const는 final과 유사해서 한번 초기화되면 수정이 불가능하다.
  // const 변수에 할당된 값은 컴파일 될 때 이미 알고 있는 값이어야 한다.
  // 앱이 실행된 후 불러오는 값 등 컴파일 이후에 할당되는 값은 넣을 수 없다.
  // const height = fetchAPI(); // 이런거는 불가능
  const height = '183';
}
