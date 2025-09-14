import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/14_longest_common_prefix.dart';

import '../../utils.dart';

void main() {
  group(
    '14. Longest Common Prefix',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/longest-common-prefix/description/", () {
      test('Input: strs = ["flower","flow","flight"]', () {
        final result = LongestCommonPrefix14Solution().longestCommonPrefix(["flower","flow","flight"]);
        expect(result, "fl");
      });
      test('Input: strs = ["dog","racecar","car"]', () {
        final result = LongestCommonPrefix14Solution().longestCommonPrefix(["dog","racecar","car"]);
        expect(result, "");
      });
    }),
  );
}