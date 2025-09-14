class ValidParentheses20Solution {
  static const brackets = {"{":"}", "[":"]", "(":")"};
  bool isValid(String s) {
    List<String> openedBrackets = [];
    for(int i = 0; i < s.length; i++) {
      final char = s[i];
      if(brackets.containsKey(char)) {
        openedBrackets.add(char);
      } else {
        if(openedBrackets.isEmpty) {
          return false;
        }
        if(char == brackets[openedBrackets.last]) {
          openedBrackets.removeAt(openedBrackets.length - 1);
        } else {
          return false;
        }
      }
    }
    return openedBrackets.isEmpty;
  }
}