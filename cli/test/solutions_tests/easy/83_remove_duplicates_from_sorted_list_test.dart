import 'package:test/test.dart';
import 'package:leetcode_solutions/list_node.dart';
import 'package:leetcode_solutions/problems/easy/83_remove_duplicates_from_sorted_list.dart';

import '../../utils.dart';

void main() {
  group(
    '83. Remove Duplicates from Sorted List',
    groupBodyWithDescriptionUrl(
        "https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/", () {
      test('Input: head = [1,1,2]', () {
        final result = RemoveDuplicatesFromSortedList83Solution().deleteDuplicates(
          ListNode(
            1,
            ListNode(
              1,
              ListNode(2, null),
            ),
          ),
        );
        expect(
          result,
          ListNode(
            1,
            ListNode(2, null),
          ),
        );
      });
      test('Input: head = [1,1,2,3,3]', () {
        final result = RemoveDuplicatesFromSortedList83Solution().deleteDuplicates(
          ListNode(
            1,
            ListNode(
              1,
              ListNode(
                2,
                ListNode(
                  3,
                  ListNode(3),
                ),
              ),
            ),
          ),
        );
        expect(
          result,
          ListNode(
            1,
            ListNode(
              2,
              ListNode(3, null),
            ),
          ),
        );
      });
    }),
  );
}
