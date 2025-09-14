class RemoveElement27Solution {
  int removeElement(List<int> nums, int val) {
    int currentIndex = 0;
    for(int i = 0; i < nums.length; i++) {
      if(nums[i] != val) {
        nums[currentIndex] = nums[i];
        currentIndex++;
      }
    }
    return currentIndex;
  }
}