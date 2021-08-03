import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Calc.wholeTning();
}

class Calc {
  double? num1;
  double? num2;
  Calc(double firstNum, double secondNum) {
    double? num1 = firstNum;
    double? num2 = secondNum;
  }

  double? add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double? subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double? multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double? divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  double? divide2(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }

  double? expontentiate(double firstNum, double secondNum) {
    double? expProd = pow(firstNum, secondNum).toDouble();
    return expProd;
  }

  static void backToMainMenu() {
    print('Вернуться в меню...');
    wholeTning();
  }

  static void wholeTning() {
    print(
        'Здарова, это мой калькулятор, я Дима.\nПиши первую цифру, чел!\nЕсли хочешь выйти, то пиши exit.');
    String? firstInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
    firstInput = firstInput?.trim();
    double firstNum = 0.0;

    if (firstInput == 'exit') {
      exit(0);
    } else {
      firstNum = double.parse(firstInput!);
    }
    print('Так, ну теперь пиши вторую');
    String? secondInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
    firstInput = firstInput.trim();
    double secondNum = 0.0;
    if (secondInput == 'exit') {
      exit(0);
    } else {
      firstNum = double.parse(secondInput!);
    }

    Calc calc1 = new Calc(firstNum, secondNum);

    print(
        'Теперь пиши че с цифрами делать надо, умник в калькуляторе.\nЕсли сложить, то +\nЕсли вычесть, то -\nЕсли умножить, то *\nЕсли разделить, то /\nЕсли разделить с модулем, то %');

    String? operator =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
    operator = operator;

    switch (operator) {
      case '+':
        print(
            '${calc1.num1} плюс ${calc1.num2} равно = ${calc1.add(firstNum, secondNum)}');
        backToMainMenu();
        break;
      case '-':
        print(
            '${calc1.num1} минус ${calc1.num2} равно = ${calc1.add(firstNum, secondNum)}');
        backToMainMenu();
        break;
      case '*':
        print(
            '${calc1.num1} умножить ${calc1.num2} равно = ${calc1.add(firstNum, secondNum)}');
        backToMainMenu();
        break;
      case '/':
        print(
            '${calc1.num1} divided by ${calc1.num2} равно = ${calc1.add(firstNum, secondNum)}');
        backToMainMenu();
        break;
      case '%':
        print(
            '${calc1.num1} divided2 by ${calc1.num2} равно = ${calc1.add(firstNum, secondNum)}');
        backToMainMenu();
        break;
      case 'exit':
        exit(0);
        break;
      default:
        print('Input not recognized');
        backToMainMenu();
        break;
    }
  }
}
