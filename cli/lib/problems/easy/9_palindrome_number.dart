class PalindromeNumber9Solution {
  bool isPalindrome(int x) {
    if(x < 0) return false;
    if(x ~/ 10 == 0) return true;
    final stringValue = x.toString();
    for(int i = 0; i< stringValue.length / 2; i++) {
      if(stringValue[i] != stringValue[stringValue.length - i - 1]) {
        return false;}
    }
    return true;
  }
}