# https://leetcode.com/problems/contains-duplicate
def contains_duplicate(nums)
  hash ||= {}
  is_dup = false
  nums.each do |num|
    if hash.has_key?(num)
      is_dup = true
      break
    else
      hash[num] = num
    end
  end
  is_dup
end
