import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/medium/3_longest_substring_without_repeating.dart';

import '../../utils.dart';

void main() {
  group(
    'Medium 3. Longest Substring Without Repeating Characters',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/longest-substring-without-repeating-characters/description/", () {
      test('Input: s = "abcabcbb"', () {
        final result = LongestSubstringWithoutRepeating3Solution().lengthOfLongestSubstring("abcabcbb");
        expect(result, 3);
      });
      test('Input: s = "bbbbb"', () {
        final result = LongestSubstringWithoutRepeating3Solution().lengthOfLongestSubstring("bbbbb");
        expect(result, 1);
      });
      test('Input: s = "pwwkew"', () {
        final result = LongestSubstringWithoutRepeating3Solution().lengthOfLongestSubstring("pwwkew");
        expect(result, 3);
      });
    }),
  );
}