import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/9_palindrome_number.dart';

import '../../utils.dart';

void main() {
  group(
    'Easy 9. Palindrome number',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/palindrome-number/description/", () {
      test('Input: x = 121', () {
        final result = PalindromeNumber9Solution().isPalindrome(121);
        expect(result, true);
      });
      test('Input: x = -121', () {
        final result = PalindromeNumber9Solution().isPalindrome(-121);
        expect(result, false);
      });
      test('Input: x = 10', () {
        final result = PalindromeNumber9Solution().isPalindrome(10);
        expect(result, false);
      });
    }),
  );
}