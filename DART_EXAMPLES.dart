//
void main(){

  
  double price = 19.73;
  print("가격: $price\n");

  bool isRaining = true;
  print("비 오는 중: $isRaining\n");


  String name = "Ajou";
  print("이름: $name\n");
  
  var favoriteColor = "Blue";
  print("좋아하는 색: $favoriteColor");
  print("favoriteColor의 Type: ${favoriteColor.runtimeType}\n");

  var temperature = 25.5;
  print("온도: $temperature");
  print("온도의 Type: ${temperature.runtimeType}");
  
}


//
void main(){

  
  String? nullableString; // 널 가능한 문자열 변수
  print(nullableString); // null 출력

  nullableString = "안녕"; // 값 할당
  print(nullableString); // "안녕하세요" 출력

  nullableString = null; // 다시 null 할당
  print(nullableString); // null 출력


  
}



//
void main() {
  String nonNullableString = "안녕하세요"; // 널 불가능한 문자열 변수
  print(nonNullableString); // "안녕하세요" 출력

  // nonNullableString = null; // 컴파일 오류: 널 불가능한 변수에 null 할당 불가능
}


//
void main() {
  
  final int finalNumber = 42;
  const double constPi = 3.14;
  // final, const 변수는 둘다 초기화 후 수정할 수 없음

  // final은 런타임에 값을 할당할 수 있음
  final dynamic finalDynamic;
  finalDynamic = "Hello, World!";
  print(finalDynamic); // "Hello, World!" 출력

  // const는 컴파일 타임에 값을 할당해야 함
  // const dynamic constDynamic; // 컴파일 오류: const 변수는 초기화가 필요

  
  // final은 런타임에서 계산된 값을 가질 수 있음
  final currentTime = DateTime.now();
  print(currentTime);

  // const는 컴파일 타임에 계산된 값을 가질 수 있음
  const int sum = 10 + 20;
  print(sum);
  
}


//
void main() {

  List<int> numbers = [];   // 빈 List 생성

  numbers.add(21);   // List에 값을 추가
  numbers.add(22);
  numbers.add(23);

  print(numbers);   // List 출력


  int length = numbers.length;   // List의 길이 확인
  print("List의 길이: $length"); 


  int element = numbers[1];   // List의 특정 인덱스 요소 접근
  print("인덱스 1의 요소: $element"); 


  for (int number in numbers) {   // List 순회
    print(number);
  }
  
  numbers.remove(22); // List에서 값을 제거. 요소의 값에 기반하여 제거
  print(numbers);
  
}


//list - 2
void main() {
  List<String> fruits = ['사과', '바나나', '체리', '딸기', '오렌지'];

  int index = fruits.indexOf('체리'); // 요소의 인덱스 찾기

  if (index != -1) {
    // indexOf는 요소를 찾으면 해당 요소의 인덱스를 반환하고, 찾지 못하면 -1을 반환
    print('체리는 인덱스 $index에 있습니다.');

   
    fruits.removeAt(index);  // 인덱스를 사용하여 요소 제거
    print('체리를 제거한 후: $fruits');
  } else {
    print('체리를 찾을 수 없습니다.');
  }
}


//
void main() {
 
  List<int> listNumbers = [1, 2, 2, 3];
  print(listNumbers); // [1, 2, 2, 3] (중복된 2가 포함됨)

  Set<int> setNumbers = {1, 2, 2, 3};
  print(setNumbers); // {1, 2, 3} (중복된 2가 자동으로 제거됨)
  
}


//function
int add(int a, int b) {
  return a + b;
}

void main() {

  int result = add(3, 5);
  print("덧셈 결과: $result"); // "덧셈 결과: 8" 출력
}


//optional param
void greet(String name, [String? greeting]) {
  
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}

void main() {
  
  greet('Alice'); // "Hello, Alice!" 출력
  greet('Bob', 'Hi'); // "Hi, Bob!" 출력
  
}


//named param
void greet({String name = 'Guest', String greeting = 'Hello'}) {
  print('$greeting, $name!');
}

void main() {
  greet(); // "Hello, Guest!" 출력
  greet(name: 'Alice'); // "Hello, Alice!" 출력
  greet(name: 'Bob', greeting: 'Hi'); // "Hi, Bob!" 출력
}


//arrow funtion
int add(int a, int b) { //일반적인 함수
  return a + b;
}

int arrowAdd(int a, int b) => a + b; //화살표 함수 

void main() {
  
  int result = add(3, 5);
  print("덧셈 결과: $result");
  
  int arrowResult = arrowAdd(3, 5);
  print("화살표 함수 덧셈 결과: $arrowResult");
  
}
