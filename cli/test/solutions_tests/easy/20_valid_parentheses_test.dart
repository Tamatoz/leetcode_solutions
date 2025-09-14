import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/20_valid_parentheses.dart';

import '../../utils.dart';

void main() {
  group(
    '20. Valid Parentheses',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/valid-parentheses/description/", () {
      test('Input: s = "()"', () {
        final result = ValidParentheses20Solution().isValid("()");
        expect(result, true);
      });
      test('Input: s = "()[]{}"', () {
        final result = ValidParentheses20Solution().isValid("()[]{}");
        expect(result, true);
      });
      test('Input: s = "(]"', () {
        final result = ValidParentheses20Solution().isValid("(]");
        expect(result, false);
      });
    }),
  );
}