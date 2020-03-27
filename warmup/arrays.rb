
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

# puts array_product(arr2)


# Write two sum, O(n2)

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

p two_sum(arr1, 4)

