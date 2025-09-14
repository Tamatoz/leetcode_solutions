class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    return calculateBT(nums);
  }

  TreeNode? calculateBT(List<int> nums) {
    if (nums.isEmpty) {
      return null;
    }
    if(nums.length == 1) {
      return TreeNode(nums[0]);
    }
    final int center = nums.length ~/ 2;
    final val = nums[center];
    return TreeNode(val, calculateBT(nums.sublist(0, center)),
        calculateBT(nums.sublist(center+1, nums.length)));
  }

}



