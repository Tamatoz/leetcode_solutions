import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/1_two_sum.dart';

import '../../utils.dart';

void main() {
  group(
    'Easy 1. Two sum',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/two-sum/description/", () {
      test('Input: nums = [2,7,11,15], target = 9', () {
        final result = TwoSum1Solution().twoSum([2,7,11,15], 9);
        expect(result, [0,1]);
      });
      test('Input: nums = [3,2,4], target = 6', () {
        final result = TwoSum1Solution().twoSum([3,2,4], 6);
        expect(result, [1,2]);
      });
      test('Input: nums = [3,3], target = 6', () {
        final result = TwoSum1Solution().twoSum([3,3], 6);
        expect(result, [0,1]);
      });
    }),
  );
}