def count_pairs(nums, k)
  hash ||= {}
  pair_count = 0
  nums.each.with_index do |num, index|
    if hash.key?(num)
      hash[num].each do |prev_ind|
        pair_count += 1 if ((prev_ind * index) % k).zero?
      end
      hash[num].push(index)
    else
      hash[num] = [index]
    end
  end
  pair_count
end
p count_pairs([3,1,2,2,2,1,3], 2)

