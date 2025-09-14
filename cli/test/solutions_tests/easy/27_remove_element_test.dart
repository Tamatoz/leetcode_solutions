import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/27_remove_element.dart';

import '../../utils.dart';

void main() {
  group(
    '27. Remove Element',
    groupBodyWithDescriptionUrl(
        "https://leetcode.com/problems/remove-element/description/", () {
      test('Input: nums = [3,2,2,3], val = 3', () {
        final result = RemoveElement27Solution().removeElement([3,2,2,3], 3);
        expect(result, 2);
      });
      test('Input: nums = [0,1,2,2,3,0,4,2], val = 2', () {
        final result = RemoveElement27Solution().removeElement([0,1,2,2,3,0,4,2], 2);
        expect(result, 5);
      });
    }),
  );
}