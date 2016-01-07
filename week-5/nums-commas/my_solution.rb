# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? => Integer
# What is the output? (i.e. What should the code return?) => Integer separated by commas
# What are the steps needed to solve the problem? => Convert integer to string, Determine if number of characters exceeds 3 => If it does then add a comma after index(-4) then -7 and so on.


# 1. Initial Solution
  def separate_comma(int)
    if int.size <= 3
      return int
    end
    array = Array.new
    int.to_s.split("").each {|x|array << x}
     
    index = -4
    until (index * -1) > array.size
      array[index] = array[index] + ","
      index -= 3
    end
   array.join
  end



# 2. Refactored Solution
  def separate_comma(int)
    if int.size <= 3
      return int
    end
    array = []
    int.to_s.split("").each {|x|array << x}
     
    index = -4
    until index.abs > array.size
      array[index] = array[index] + ","
      index -= 3
    end
   array.join
  end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I know I wanted to use the array index to find the numbers where I wanted to input the commas. I also remembered about negative index and used that to reach the numbers I wanted to get to.

Was your pseudocode effective in helping you build a successful initial solution?
My pseudocode was effective in helping me plan out what I wanted to do. My plan was sound, I just needed to find the right ruby tools to help me do it.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used .abs which gave me the absolute value of a variable, which I have never used before. 
 .abs made it so that even though I was looking at negative index, I can be sure there are enough numbers.

How did you initially iterate through the data structure?
I initially separated each number into its own string and then I went through and added the commas accordingly.

Do you feel your refactored solution is more readable than your initial solution? Why?
It's mostly the same... so I can't really say its more readable other than one small change.
=end