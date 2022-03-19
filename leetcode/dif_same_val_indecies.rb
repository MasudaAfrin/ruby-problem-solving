# https://leetcode.com/problems/contains-duplicate-ii/

def contains_duplicate(nums, k)
  hash ||= {}
  is_dup = false
  nums.each.with_index do |val, index|
    if hash.key?(val)
      if (hash[val] - index).abs <= k
        is_dup = true
        break
      else
        hash[val] = index
      end
    else
      hash[val] = index
    end
  end
  is_dup
end

p contains_duplicate([1, 2, 3, 1, 2, 3], 2) # false
