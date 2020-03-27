
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

# puts array_sum(arr1)



# Write a function to multiply the numbers of an array

def array_product(array)
  product = 1

  array.each do |num|
    product *= num
    puts product
  end


  product
end

# puts array_product(arr1)



# Write two_sum_n2
# The solution should be in O(n2) time

def two_sum_n2(array, target)

  i = 0
  
  while i < array.length - 1
    num1 = array[i]
    j = i + 1

    while j < array.length
      num2 = array[j]
      
      if num1 + num2 == target
        return [i, j] 
      end

      j += 1
    end

    i += 1
  end

  return nil
end

# p two_sum_n2(arr1, 4)
# [0, 2]
# p two_sum_n2(arr1, 6)
# nil



# Write two_sum
# Solution should be constant time O(n)

def two_sum(array, target)
  diff = {}
  
  array.each_with_index do |num, i|
    difference = target - num

    if diff.has_key?(difference)
      idx = diff[difference]
      return [idx, i]
    else
      diff[num] = i
    end

  end

  return nil
end

# p two_sum(arr1, 4)
# [0, 2]
# p two_sum(arr1, 6)
# nil



arr2 = [0, 1, 0, 3, 12]

def move_zeros(array)

  last_non_zero = 0

  i = 0
  while i < array.length
    
    if array[i] != 0
      array[last_non_zero] = array[i]
      last_non_zero += 1
    end

    i += 1
  end

  while last_non_zero < array.length
    array[last_non_zero] = 0
    last_non_zero += 1
  end

  array
end

# p move_zeros(arr2)
# [1, 3, 12, 0, 0]