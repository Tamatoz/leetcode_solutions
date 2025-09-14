import 'package:leetcode_solutions/list_node.dart';

class RemoveDuplicatesFromSortedList83Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if(head == null || head.next == null) {
      return head;
    }
    if(head.val == head.next?.val) {
      head.next = head.next?.next;
      deleteDuplicates(head);
    }
    deleteDuplicates(head.next);
    return head;
  }
}