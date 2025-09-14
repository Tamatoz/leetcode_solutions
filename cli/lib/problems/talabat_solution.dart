import 'dart:math';

class TalabatSolution {
  const TalabatSolution();

  ///Pass two integers to get multiplication of them
  int multiply(int firstNum, int secondNum) {
    final bool isResultNegative =
        (firstNum < 0 && secondNum > 0) || (secondNum < 0 && firstNum > 0);
    //Check if we need to add "-" to the result value
    firstNum = firstNum.abs();
    secondNum = secondNum.abs();
    int multiplication = 0;
    for (int i = 0; i < min(firstNum, secondNum); i++) {
      multiplication += max(firstNum, secondNum);
    }
    return isResultNegative ? -multiplication : multiplication;
  }
}
