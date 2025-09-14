class TwoSum1Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numbers = {};
    for(int i = 0; i < nums.length; i++) {
      final result = target - nums[i];
      if(numbers.containsKey(result)) {
        return [numbers[result]!, i];
      }
      numbers[nums[i]] = i;
    }
    return [];
  }
}