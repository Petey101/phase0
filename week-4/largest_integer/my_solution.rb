# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
   if list_of_nums == []
  	return nil
  elsif list_of_nums == 0
  	return 0
  else list_of_nums.sort! {|x,y| y.to_i <=> x.to_i}
  	return list_of_nums[0]
  end
end