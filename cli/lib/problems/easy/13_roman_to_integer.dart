class RomanToInteger13Solution {
  static const _numbers = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };
  int romanToInt(String s) {
    int prevNumber = 0;
    int result = 0;
    for(int i = 0; i < s.length; i++) {
      int currentNumber = _numbers[s[i]]!;
      if(prevNumber >= currentNumber) {
        result += prevNumber;
      } else {
        currentNumber -= prevNumber;
      }
      prevNumber = currentNumber;
    }
    return result += prevNumber;
  }
}