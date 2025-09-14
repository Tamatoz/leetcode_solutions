import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/35_search_insert_position.dart';

import '../../utils.dart';

void main() {
  group(
    '35. Search Insert Position',
    groupBodyWithDescriptionUrl(
        "https://leetcode.com/problems/search-insert-position/description/", () {
      test('Input: nums = [1,3,5,6], target = 5', () {
        final result = SearchInsertPosition35Solution().searchInsert([1,3,5,6], 5);
        expect(result, 2);
      });
      test('Input: nums = [1,3,5,6], target = 2', () {
        final result = SearchInsertPosition35Solution().searchInsert([1,3,5,6], 2);
        expect(result, 1);
      });
      test('Input: nums = [1,3,5,6], target = 7', () {
        final result = SearchInsertPosition35Solution().searchInsert([1,3,5,6], 7);
        expect(result, 4);
      });
    }),
  );
}