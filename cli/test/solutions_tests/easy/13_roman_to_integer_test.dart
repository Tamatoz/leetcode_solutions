import 'package:leetcode_solutions/problems/easy/13_roman_to_integer.dart';
import 'package:test/test.dart';

import '../../utils.dart';


void main() {
  group(
    'Easy 13. Roman to integer',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/roman-to-integer/description/", () {
      test('Input: s = "III"', () {
        final result = RomanToInteger13Solution().romanToInt("III");
        expect(result, 3);
      });
      test('Input: s = "LVIII"', () {
        final result = RomanToInteger13Solution().romanToInt("LVIII");
        expect(result, 58);
      });
      test('Input: s = "MCMXCIV"', () {
        final result = RomanToInteger13Solution().romanToInt("MCMXCIV");
        expect(result, 1994);
      });
    }),
  );
}