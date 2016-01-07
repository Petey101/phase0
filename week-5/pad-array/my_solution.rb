# Pad an Array

# I worked on this challenge [ with: Matthew B]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The input is an array, the minimum size of the array, and a padding if the minimum size
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) 
  if min_size <= array.length
    return array
  elsif
    min_size == 0
    return array
  else
    until array.length == min_size
      new_array = array.push(value)
    end
    array = new_array
    return array
  end
    
end

def pad(array, min_size, value = nil) 
    new_array = array.dup
  if min_size <= array.length
    return new_array
  elsif
    min_size == 0
    return new_array
  else
    until new_array.length == min_size
      new_array.push(value)
    end
    return new_array
  end
    
end
=end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) 
  if min_size <= array.length
  	return array
  else array.fill(value, array.length...min_size) 
  end
end
    


def pad(array, min_size, value = nil)
  new_array = array.dup
  if min_size <=new_array.length
    return new_array
  else new_array.fill(value, new_array.length...min_size) 
  end
end
    
#Driver Code
=begin
	
rescue array = [1,2,3]
array_2 = [4, 5, 6]
p array_2
p pad(array_2, 5)
p pad!(array, 6, value=nil)
p array
p array_2

empty_array = []
long_array = [1,2,3]*10
random_array = (1..1+rand(100)).map { rand(10) }

p pad(empty_array, 0)
p pad(long_array, 0 )
p pad(random_array, 0)
p empty_array
p long_array
p random_array

	
=end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes we had a pretty easy time breaking the problem down into small steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
It wasn't to difficult to translate it initially into code. The only problem we had was object id was similar in the pad method so we had to return the duplicated variable instead.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solutions were successful except for the object ID error. We just had to return the new_array variable we created instead of array.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes we found the fill method to add in the optional variables from the length of the array to the minimum length. We had trouble with the (..) until we figured we had to use 3(...).

How readable is your solution? Did you and your pair choose descriptive variable names?
I believe our solution is pretty readable and we chose variable names that were easy to read as well.

What is the difference between destructive and non-destructive methods in your own words?
A destructive method will take the argument and change it whereas a non-destructive method will take the argument and output a result but will not affect the original argument.
	

	
=end