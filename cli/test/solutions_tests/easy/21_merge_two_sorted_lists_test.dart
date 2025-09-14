import 'package:test/test.dart';
import 'package:leetcode_solutions/list_node.dart';
import 'package:leetcode_solutions/problems/easy/21_merge_two_sorted_lists.dart';

import '../../utils.dart';

void main() {
  group(
    '21. Merge Two Sorted Lists',
    groupBodyWithDescriptionUrl("https://leetcode.com/problems/merge-two-sorted-lists/description/",
        () {
      test('Input: list1 = [1,2,4], list2 = [1,3,4]', () {
        final result = MergeTwoSortedLists21Solution().mergeTwoLists(
            ListNode(1, ListNode(2, ListNode(4, null))),
            ListNode(1, ListNode(3, ListNode(4, null))));
        expect(
          result,
          ListNode(
            1,
            ListNode(
              1,
              ListNode(
                2,
                ListNode(
                  3,
                  ListNode(
                    4,
                    ListNode(4, null),
                  ),
                ),
              ),
            ),
          ),
        );
      });
      test('Input: list1 = [], list2 = []', () {
        final result = MergeTwoSortedLists21Solution().mergeTwoLists(null, null);
        expect(result, null);
      });
      test('Input: list1 = [], list2 = [0]', () {
        final result = MergeTwoSortedLists21Solution().mergeTwoLists(null, ListNode(0, null));
        expect(result, ListNode(0, null));
      });
    }),
  );
}
