def selection_sort(array)
  length = array.size
  (0...length).each do |i|
    (i + 1...length).each do |j|
      next if array[i] < array[j]

      temp = array[i]
      array[i] = array[j]
      array[j] = temp
    end
  end
  array
end

p selection_sort([64, 25, 12, 22, 11])
# time complexity - O(n^2)
# auxiliary space complexity - O(1)
# not stable but can be made stable and in place sorting
