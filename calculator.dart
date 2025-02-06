import 'dart:io';

double calculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print('Error: Pembagian dengan nol tidak diperbolehkan.');
        return double.nan;
      }
    default:
      print('Operator tidak valid. Gunakan +, -, *, atau /.');
      return double.nan;
  }
}

void main() {
  print('Masukkan angka pertama: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Masukkan operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  print('Masukkan angka kedua: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result = calculator(num1, num2, operator);
  print('Hasil: $result');
}
