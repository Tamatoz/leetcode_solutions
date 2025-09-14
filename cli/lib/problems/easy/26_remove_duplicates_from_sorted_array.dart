class RemoveDuplicatesFromSortedArray26Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.length <= 1) {
      return nums.length;
    }
    int resultCount = 1;
    for(int i = 1; i < nums.length; i++) {
      if(nums[i] != nums[i - 1]) {
        nums[resultCount] = nums[i];
        resultCount++;
      }
    }
    return resultCount;
  }
}