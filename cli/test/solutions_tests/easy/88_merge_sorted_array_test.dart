import 'package:test/test.dart';
import 'package:leetcode_solutions/problems/easy/88_merge_sorted_array.dart';

import '../../utils.dart';

void main() {
  group(
    '88. Merge Sorted Array',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/merge-sorted-array/description/",
        () {
      test('Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3', () {
        var nums1 = [1, 2, 3, 0, 0, 0];
        MergeSortedArray88Solution().merge(nums1, 3, [2, 5, 6], 3);
        expect(nums1, [1,2,2,3,5,6]);
      });
      test('Input: nums1 = [1], m = 1, nums2 = [], n = 0', () {
        var nums1 = [1];
        MergeSortedArray88Solution().merge(nums1, 1, [], 0);
        expect(nums1, [1]);
      });
      test('Input: nums1 = [0], m = 0, nums2 = [1], n = 1', () {
        var nums1 = [0];
        MergeSortedArray88Solution().merge(nums1, 0, [1], 1);
        expect(nums1, [1]);
      });
    }),
  );
}
