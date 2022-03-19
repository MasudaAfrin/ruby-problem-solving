# https://leetcode.com/problems/maximum-subarray/

def max_sub_array(nums)
  max_sum = -10_000
  current_sum = 0
  nums.each do |num|
    current_sum += num
    max_sum = current_sum if current_sum > max_sum
    current_sum = 0 if current_sum.negative?
  end
  max_sum
end

p max_sub_array([-1, -1, -1, 5, 5, -10]) # 10
