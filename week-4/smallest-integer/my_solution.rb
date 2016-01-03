# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums == []
  	return nil
  elsif list_of_nums == 0
  	return 0
  else list_of_nums.sort! {|x,y| x.to_i <=> y.to_i}
  	return list_of_nums[0]
  end
end