# Define a method hello(name) that takes a string representing a name 
# and returns the string "Hello, " concatenated with the name.

def hello(name)
  "Hello, #{name}"
end

p hello('Ricky')


# Define a method starts_with_consonant?(s) that takes a string and 
# returns true if it starts with a consonant and false otherwise. 
# (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
# NOTE: be sure it works for both upper and lower case and for nonletters!
puts; puts

def starts_with_consonant?(s)
  return true if s =~ /^[bcdfghjklmnpqrstvwxyz]/i
  return false
end

p starts_with_consonant?('apple') # false
p starts_with_consonant?('zebra') # true
p starts_with_consonant?('Zebra') # true
p starts_with_consonant?('dog') # true



# Define a method binary_multiple_of_4?(s) that takes a string and 
# returns true if the string represents a binary number that is a multiple of 4. 
# NOTE: be sure it returns false if the string is not a valid binary number!
puts; puts 

def binary_multiple_of_4?(s)
  if s =~ /^[01]+$/
    decimal = s.to_i(2)
    if decimal % 4 == 0
      return true
    end
  end
  return false
end

p binary_multiple_of_4?('0001')
p binary_multiple_of_4?('0101')
p binary_multiple_of_4?('1100')
p binary_multiple_of_4?('Ricky was here')






