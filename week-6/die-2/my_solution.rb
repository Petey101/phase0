# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(array)
    @sides = array.length.to_i
    @new_array = array.dup
   if array == []
      raise ArgumentError.new("Argument is not 1 or greater")
    end
  end

  def sides
    return @sides
  end

  def roll
    @new_array.shuffle!
    return @new_array[0]
    
  end
end

#Driver Code
=begin
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides # still returns the number of sides, in this case 6
p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
=end

# Refactored Solution








# Reflection
=begin
 What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference between this die class and the last one is that now we are taking in an array or letters instead of given a number of sides. I had to change some logic to make it work but not much.

What does this exercise teach you about making code that is easily changeable or modifiable? 
Easily changeable code is great! I feel like making code that is flexible makes it more resilient to any changes that may come its way and still be relevant.

What new methods did you learn when working on this challenge, if any?
I didn't learn any new methods on this challenge. 

What concepts about classes were you able to solidify in this challenge? 
Classes are becoming slightly more clearer, but I think I have to work with it more to say that I am comfortable with it.

=end