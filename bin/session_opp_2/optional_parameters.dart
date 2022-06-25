int add(int number1, int number2, [int number3 = 0, int number4 = 0]) {
  return number1 + number2 + number3 + number4;
}

int substract(int number1, int number2, {int number3 = 0, int number4 = 0}) {
  return number1 - number2 - number3 - number4;
}

void main() {
  print('Option Positional Parameters ');
  //20 + 30 + 0 + 0 = 50
  print('${add(20, 30)}');

  //20 + 30 + 40 + 0 = 90
  print('${add(20, 30, 40)}');

  //20 + 30 + 40 + 50 = 140
  print('${add(20, 30, 40, 50)}');

  print('-----Named Option Parameters');

  //10 - 20 - 0 - 0 = -10
  print('${substract(10, 20)}');

  //10 - 20 - 30 - 0 = -40
  print('${substract(10, 20, number3: 30)}');

  //10 - 20 - 30 - 40 = -80
  print('${substract(10, 20, number3: 30, number4: 40)}');
  print('${substract(10, 20, number4: 30, number3: 40)}');
}
