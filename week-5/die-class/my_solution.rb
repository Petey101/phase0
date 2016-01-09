# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a number of sides as a whole number
# Output:a class that takes in a number and returns a random number from 1 to the number of sides when you call upon the roll method.
# Steps: create an instance variable for use throughout all the methods
#        Raise argument error if the sides are less than 1
#        define method sides which will return the number of sides of the die
#        define a method roll which will return a random number between 1 and the number of sides



# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides.to_i
    if sides < 1 
    	raise ArgumentError.new("Need at least 1 side!")
    end
  end

  def sides
   return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

#Driver Code

dice = Die.new(6)
p dice.sides
p dice.roll


# 3. Refactored Solution







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error is when an argument is receveived that would cause the method to not work as intended. We would use argument errors when the given argument is not within our range of acceptable arguments.


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used rand to implement a random roll for numbers between the range of 1 and the number of sides. The syntax for rand was pretty simple and I didn't have any problems with it.


What is a Ruby class?
A ruby class is a grouping of methods that can be applied to an argument once the class is applied to the argument.

Why would you use a Ruby class?
You would use a ruby class if you wanted to use the different functions of the class for a single object.

What is the difference between a local variable and an instance variable?
A local variable is defined and used within a method. An instance variable is defined and used within multiple methods as long as they are within the same object.

Where can an instance variable be used?	
An instance variable can be used throughout the object under which it is defined.


=end