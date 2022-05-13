# frozen_string_literal: true

# Binary search on asc sorted array, it is a pre requisite
class BinarySearch
  def initialize(array = [])
    @array = array
  end

  def search_for(look_for)
    found, index = binary_search(look_for)
    if found
      p "#{look_for} is found at index #{index}"
    else
      p "#{look_for} is not found in given array"
    end
  end

  private

  def binary_search(look_for)
    low = 0
    high = @array.size - 1

    while low <= high
      mid = (high - low) / 2 + low
      return [true, mid] if @array[mid] == look_for

      if @array[mid] > look_for # if the array is not sorted it will fail here as this algo always look for mid with val
        high = mid - 1
      else
        low = mid + 1
      end
    end

    [false, nil]
  end
end

bin_search = BinarySearch.new([12, 23, 56, 57, 66, 99])
bin_search.search_for(200)

# Time complexity O(log(n))
