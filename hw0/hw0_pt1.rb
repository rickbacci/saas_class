# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.

def sum array
  return 0 if array.empty?
  array.inject{|sum, num| sum + num}
end

p sum([]) # 0
p sum([1,2,3]) # 6


# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. For an empty array it should return zero. 
# For an array with just one element, it should return that element.

puts; puts 


def max_2_sum array
  return 0 if array.empty?
  return array.first if array.length == 1
  
  sorted_array = array.sort{ |a, b| b <=> a }
  sorted_array[0] + sorted_array[1]
      
end

p max_2_sum([]) # 0
p max_2_sum([1]) # 1
p max_2_sum([1, 2, 3]) # 5
p max_2_sum([10, 11, 43, 7, 2]) # 54



# Define a method sum_to_n? which takes an array of integers and an additional integer, n, 
# as arguments and returns true if any two distinct elements in the array of integers sum to n. 
# An empty array or single element array should both return false.

puts; puts

def sum_to_n? array, n
  return false if array.empty? || array.length == 1
  
  array.each do |value1|
    array.each do |value2|
      return true if (value1 + value2 == n) && value1 != value2
    end
  end
  return false
end



p sum_to_n?([], 0) # false
p sum_to_n?([1], 0) # false

p sum_to_n?([1, 2, 3], 5) # true
p sum_to_n?([1, 2, 3], 10) # false
p sum_to_n?([1, 2, 3], 6) # false ## why is this not false?
p sum_to_n?([6, 6, 1, 2], 12) # false
p sum_to_n?([7, 5, 4, 2], 12) # true

p sum_to_n?([1,2,3],4)
p sum_to_n?([1,2,3,4,5], 5)




