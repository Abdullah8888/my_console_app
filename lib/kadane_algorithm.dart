import 'dart:math';

int maxSubArray(List<int> nums) {
  int currentSum = 0;
  int maxSum = nums.first;

  for (int i = 0; i < nums.length; i++) {
    currentSum = max(nums[i], currentSum + nums[i]);
    maxSum = max(maxSum, currentSum);
  }
  return maxSum;
}
