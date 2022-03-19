def bubble_sort(array)
  length = array.size
  (0...length).each do |i|
    boundary = length - i - 1
    swapped = false
    (0...boundary).each do |j|
      next if array[j] < array[j + 1]

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
      swapped = true
    end
    break unless swapped
  end
  array
end

p bubble_sort([4, 8, 0, 3])
# time complexity - O(n^2) (when array is sorted reversely)
# auxiliary space complexity - O(1)
# stable and in place sorting
