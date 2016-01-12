# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer called guess
# Output:High/Low/ Correct
# Steps:Create class named GuessingGame
#Initialize guessing game with a number = (answer)
#Define method guess which takes an integer guess and returns :high if higher than guess, :low if lower than guess and :correct if the guess is equal to the answer.
#Define method solved which returns true if the most recent guess was correct 


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer

  
  end
  
  def guess(number)
    @number = number
    if number > @answer
      return "high".to_sym
    elsif number < @answer
      return "low".to_sym
    else 
      @solved = true
      return "correct".to_sym
    end
  
  end
  
  def solved?
    if @number == @answer
      @solved == true
    else
      @solved = false
    end
    return @solved
    
  end

end
=end

#Driver Code
=begin
game = GuessingGame.new(10)

p game.solved?   # => false

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false

p game.guess(10) # => :correct
p game.solved?   # => true

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false
=end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer

  
  end
  
  def guess(number)
    @number = number
    if number > @answer
      "high".to_sym
    elsif number < @answer
       "low".to_sym
    else 
      "correct".to_sym
    end
  
  end
  
  def solved?
    if @number == @answer
      @solved = true
    else
      @solved = false
    end
      @solved
    
  end

end





# Reflection
=begin 
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables and methods are like toys you can only play with when you are at the daycare. You can use it when you are there but you can't take it with you when you leave it.

When should you use instance variables? What do they do for you?
You should use instance variables when you only plan to use them within the object you create them in. They allow you to assign certain things to be able to call them easier.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
You use flow control to control what happens to elements. Using if and else statements you can put elements through the statements until you reach the if or elsif statement that returns true, and it will execute the functions detailed in that statement.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I'm still not entirely clear as to why you would return a symbol instead of a string in this challenge. I did learn that symbols are similar to integers in some regards and that they are hard to manipulate.
I wonder if this mostly unchangeable trait of symbols is why we used them in this challenge.


=end