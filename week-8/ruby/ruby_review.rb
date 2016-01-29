# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# 1. Define a method super_fizzbuzz which takes an array for an argument.
# 2. Create an array to put in fizzbuzzed array.
# 3. Iterate each element of the array to see if they are divisible 3,5, or 15.
# 4. For elements divisible by 15 replace with "FizzBuzz".
# 5. For elements divisible by 5 replace with "Buzz".
# 6. For elements divisible by 3 replace with "Fizz".
# 7. Return fizzbuzzed array.

# Initial Solution

# def super_fizzbuzz(array)
#   fizzbuzzed = []
#   array.each do |x|
#     if x % (15) == 0
#       fizzbuzzed << "FizzBuzz"
#     elsif x % 5 == 0
#       fizzbuzzed << "Buzz"
#     elsif x % 3 == 0
#       fizzbuzzed << "Fizz"
#     else
#       fizzbuzzed << x
#     end
#   end
#   return fizzbuzzed
# end



# Refactored Solution

def super_fizzbuzz(array)
  array.collect do |x|
    if x % (15) == 0
      "FizzBuzz"
    elsif x % 5 == 0
      "Buzz"
    elsif x % 3 == 0
      "Fizz"
    else 
      x
    end
  end
end
#Driver Code
array = [1,2,3,4,5,6,7,8,9,100,15,30,45]
p super_fizzbuzz(array)
p (array)





# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed iteration in this challenge. 

# What is still confusing to you about Ruby?
# I suppose I could still work with classes some more. I am not completely comfortable with them yet.

# What are you going to study to get more prepared for Phase 1?
# I need to review some Ruby and practice JavaScript some more. Classes in Ruby could use some practice.
# For JS, I need to work on it more to get used to it.