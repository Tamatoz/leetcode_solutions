class LongestCommonPrefix14Solution {
  String longestCommonPrefix(List<String> strs) {
    if(strs.isEmpty) {
      return '';
    }
    if(strs.length == 1) {
      return strs[0];
    }
    return _getPrefix(strs, '');
  }

  String _getPrefix(List<String> strs, String prefix) {
    String letter = '';
    int currentIndex = prefix.length;
    if(strs[0].length <= currentIndex) {
      return prefix;
    } else {
      letter = strs[0][currentIndex];
    }
    for(int i = 1; i < strs.length; i++) {
      if(strs[i].length <= currentIndex || strs[i][currentIndex] != letter) {
        return prefix;
      }
    }
    return _getPrefix(strs, prefix + letter);
  }
}