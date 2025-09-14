class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ListNode &&
              runtimeType == other.runtimeType &&
              val == other.val &&
              next == other.next;

  @override
  int get hashCode => val.hashCode ^ next.hashCode;
}
