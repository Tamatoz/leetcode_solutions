import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/58_length_of_last_word.dart';

import '../../utils.dart';

void main() {
  group(
    '58. Length of Last Word',
    groupBodyWithDescriptionUrl(
        "https://leetcode.com/problems/length-of-last-word/description/", () {
      test('Input: s = "Hello World"', () {
        final result = LengthOfLastWord58Solution().lengthOfLastWord("Hello World");
        expect(result, 5);
      });
      test('Input: s = "   fly me   to   the moon  "', () {
        final result = LengthOfLastWord58Solution().lengthOfLastWord("   fly me   to   the moon  ");
        expect(result, 4);
      });
      test('Input: s = "luffy is still joyboy"', () {
        final result = LengthOfLastWord58Solution().lengthOfLastWord("luffy is still joyboy");
        expect(result, 6);
      });
    }),
  );
}