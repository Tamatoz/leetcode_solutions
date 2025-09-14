import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    return calculateDepth(root) != -1;
  }

  int calculateDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }

    int leftDepth = calculateDepth(root.left);
    if (leftDepth == -1) return -1;

    int rightDepth = calculateDepth(root.right);
    if (rightDepth == -1) return -1;

    if ((leftDepth - rightDepth).abs() > 1) return -1;

    return max(leftDepth, rightDepth) + 1;
  }
}
