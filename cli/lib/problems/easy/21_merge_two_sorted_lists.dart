import 'package:leetcode_solutions/list_node.dart';

class MergeTwoSortedLists21Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list2 == null) {
      return list1;
    } else if (list1 == null) {
      return list2;
    }
    late final int firstVal;
    if (list1.val > list2.val) {
      firstVal = list2.val;
      list2 = list2.next;
    } else {
      firstVal = list1.val;
      list1 = list1.next;
    }
    final resultListNode = ListNode(firstVal);
    _fillList(list1, list2, resultListNode);
    return resultListNode;
  }

  void _fillList(ListNode? list1, ListNode? list2, ListNode resultList) {
    if (list1 == null && list2 == null) {
      return;
    }
    final newListNode = ListNode();
    if (list1 == null || (list2 != null && list1.val > list2.val)) {
      newListNode.val = list2!.val;
      resultList.next = newListNode;
      return _fillList(list1, list2.next, newListNode);
    } else {
      newListNode.val = list1.val;
      resultList.next = newListNode;
      return _fillList(list1.next, list2, newListNode);
    }
  }
}