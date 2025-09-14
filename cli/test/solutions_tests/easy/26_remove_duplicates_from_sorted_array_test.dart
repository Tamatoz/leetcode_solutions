import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/26_remove_duplicates_from_sorted_array.dart';

import '../../utils.dart';

void main() {
  group(
    '26. Remove Duplicates from Sorted Array',
    groupBodyWithDescriptionUrl(
        "https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/", () {
      test('Input: nums = [1,1,2]', () {
        final result = RemoveDuplicatesFromSortedArray26Solution().removeDuplicates([1, 1, 2]);
        expect(result, 2);
      });
      test('Input: nums = [0,0,1,1,1,2,2,3,3,4]', () {
        final result = RemoveDuplicatesFromSortedArray26Solution()
            .removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
        expect(result, 5);
      });
    }),
  );
}
