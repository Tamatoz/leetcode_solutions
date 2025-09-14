class MergeSortedArray88Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (n == 0) {
      return;
    }
    var currentSecondIndex = 0;
    List<int> nums1Buffer = [];
    for (int i = 0; i < nums1.length; i++) {
      if (i < m) {
        if (currentSecondIndex == n) {
          if (nums1Buffer.isNotEmpty && nums1Buffer.first < nums1[i]) {
            nums1Buffer.add(nums1[i]);
            nums1[i] = nums1Buffer.removeAt(0);
          }
        } else {
          if (nums1Buffer.isNotEmpty && nums1Buffer.first < nums2[currentSecondIndex]) {
            nums1Buffer.add(nums1[i]);
            nums1[i] = nums1Buffer.removeAt(0);
          } else if (nums1Buffer.isNotEmpty && nums1Buffer.first >= nums2[currentSecondIndex]) {
            nums1Buffer.add(nums1[i]);
            nums1[i] = nums2[currentSecondIndex];
            currentSecondIndex++;
          } else if (nums2[currentSecondIndex] < nums1[i]) {
            nums1Buffer.add(nums1[i]);
            nums1[i] = nums2[currentSecondIndex];
            currentSecondIndex++;
          }
        }
      } else {
        if (nums1Buffer.isEmpty) {
          nums1[i] = nums2[currentSecondIndex];
          currentSecondIndex++;
        } else if (currentSecondIndex == n) {
          nums1[i] = nums1Buffer.removeAt(0);
        } else if (nums2[currentSecondIndex] <= nums1Buffer.first) {
          nums1[i] = nums2[currentSecondIndex];
          currentSecondIndex++;
        } else {
          nums1[i] = nums1Buffer.removeAt(0);
        }
      }
    }
  }
}
