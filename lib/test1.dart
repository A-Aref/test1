
import 'dart:io';

void math() {
  print("Enter first number");
  var num1 = num.parse(stdin.readLineSync()!);
  print("Enter of sign");
  var sign = stdin.readLineSync();
  while (sign != '+' && sign != '-' && sign != '*' &&  sign != '/' )
  {
    print("Enter a correct sign");
    sign = stdin.readLineSync();
  }
  print("Enter second number");
  var num2 = num.parse(stdin.readLineSync()!);

  var result;

  switch (sign) {
    case '+':
      result = num1 + num2;
      print ("Result of $num1 + $num2 = $result");
      break;
    case '-':
      result = num1 - num2;
      print ("Result of $num1 - $num2 = $result");
      break;
    case '*':
      result = num1 * num2;
      print ("Result of $num1 * $num2 = $result");
      break;
    case '/':
      result = num1 / num2;
      print ("Result of $num1 / $num2 = $result");
      break;
    default:
  }
}

////////////////////////////////////////////////////////////////////