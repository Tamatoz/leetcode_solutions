class SearchInsertPosition35Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    while (left < right) {
      int middle = (left + (right - left) / 2).floor();
      if (target == nums[middle]) {
        return middle;
      } else if (nums[middle] < target) {
        left = middle + 1;
      } else {
        right = middle;
      }
    }
    return nums[left] < target ? left + 1 : left;
  }
}