
arr1 = [1, 2, 3]
arr2 = [4, 5, 6]

# Write a function to sum the numbers of an array

def array_sum(array)
  sum = 0

  array.each do |num|
    sum += num
    puts sum
  end
  
  sum
end

puts array_sum(arr1)

 