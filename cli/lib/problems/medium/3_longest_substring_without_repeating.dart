import 'dart:math';

class LongestSubstringWithoutRepeating3Solution {
  int lengthOfLongestSubstring(String s) {
    final Map<String, int> charsPositions = {};
    var maxLength = 0;
    var currentLength = 0;
    for(int i = 0; i < s.length; i++) {
      final lastIndex = charsPositions[s[i]];
      if(lastIndex != null && i - lastIndex <= currentLength) {
        maxLength = max(maxLength, currentLength);
        currentLength = i - lastIndex;
      } else {
        currentLength++;
      }
      charsPositions[s[i]] = i;
    }
    maxLength = max(maxLength, currentLength);
    return maxLength;
  }
}