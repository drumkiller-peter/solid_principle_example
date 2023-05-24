// Software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification.
// We can use interfaces to achieve this.

import 'dart:math';

class Calculator {
  final double a;
  final double b;
  Calculator({
    required this.a,
    required this.b,
  });

  double calculate(String operator) {
    switch (operator) {
      case "*":
        return a * b;
      case "+":
        return a + b;
      case "-":
        return a - b;
      case "sin":
        return sin(a - b);
      default:
        return 0;
    }
  }
}

















abstract class IOOperationOCP {
  final double a;
  final double b;

  IOOperationOCP(this.a, this.b);
  double calculatorOCP();
}

class Addition extends IOOperationOCP {
  Addition(super.a, super.b);
  @override
  double calculatorOCP() {
    return a + b;
  }
}

class LogarithmicOperation extends IOOperationOCP {
  LogarithmicOperation(super.a, super.b);
  @override
  double calculatorOCP() {
    return log(a + b);
  }
}

class TrigonometricOperation extends IOOperationOCP {
  TrigonometricOperation(super.a, super.b);
  @override
  double calculatorOCP() {
    return sin(a + b);
  }
}

class CalculatorOCP {
  double calculate(IOOperationOCP ioOperationOCP) {
    return ioOperationOCP.calculatorOCP();
  }
}

void main(List<String> args) {
  final a = CalculatorOCP();
  a.calculate(TrigonometricOperation(1, 5));
}
