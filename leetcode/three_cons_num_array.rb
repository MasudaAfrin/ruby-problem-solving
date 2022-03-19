def sum_of_three(num)
  if (num % 3).zero?
    div = num / 3
    [div - 1, div, div + 1]
  else
    []
  end
end

p sum_of_three(9)
