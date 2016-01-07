# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) A mode of the original array
# What are the steps needed to solve the problem?
# -Define a method "mode" that accepts an array as input.
# -Create an empty hash.
# -Create a counter.
# -Each time a value occurs in the original array, increase counter and add to the empty hash.
# -Find the largest value(s) in the hash and return the associated keys in a new array.


# 1. Initial Solution
=begin
def mode(array)
  mode_array = []
  counter = Hash.new(0)
  array.each { |x| counter[x] += 1}
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  return mode_array
end
=end

# 3. Refactored Solution
def mode(array)
  mode_array = []
  counter = Hash.new(0)
  array.each { |x| counter[x] += 1}
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  return mode_array
end
    #Driver Code
=begin
array = ["who", "what", "where", "who"]
p mode(array)
array_2 = [1,2,3,3,2]
p mode (array_2)
=end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We used hashes to store the frequencies of occurances and called upon the keys with the max values.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes this method was much more successful in implementing the pseduocode. My last pseudocode was mostly thrown out the window.

What issues/successes did you run into when translating your pseudocode to code?
We had some syntax issues with missing the s on the values method. We also had to put some thought into how to put the values into the created hash.


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used each to iterate through the content. We also used .values.max to access the values in the hash with the highest integers and put the keys into the new array. It took a little bit to get them to work but I think it helped a lot.

	
=end
    
    