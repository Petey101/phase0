# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the credit card number
# Output: true or false for whether it's a valid number
# Steps:
#1. initialize the credit card class
    #check that it has 16 digits
    #have instance variable for the number-convert integer to string array
# 2. Starting with the second to last digit, double every other digit until you reach the first digit.
    #check index of each element
    #double the even indexes
    #leave odd indexes alone

#3. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
  #convert array back into string then split it into single digits 
  #then sum up

#4. If the total is a multiple of ten, you have received a valid credit card number!
  #conditional checking if sum % 10 is 0 then return true, else false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  def initialize(number)
    raise ArgumentError.new("Number is not a valid credit card number!") unless number.to_s.length == 16
    @number = number.to_s.split('')
    
  end
  
  def double(number)
    @doubled = @number.map!{|x| if @number.find_index(x).even? then x.to_i * 2 else x = x.to_i end }
  end
  
  
  def sum(number)
    @doubled.map!{|x| x.to_s}
    @joined = @doubled.join('').split('')
    @joined.map!{|x| x.to_i}
    @total = 0 
    @joined.each { |n| @total = @total + n.to_i }
    return @total
    
  end
  
  def check_card
    @temp = double(@number)
    @total = sum(@temp)
   if @total.to_i % 10 == 0
     return true
   else 
     return false
   end
  end
  
end
=end





# Refactored Solution
class CreditCard

  def initialize(number)
    raise ArgumentError.new("Number is not a valid credit card number!") unless number.to_s.length == 16
    @number = number.to_s.split('')
  end

  def double(number)
     @number.map!{|x| if @number.find_index(x).even? then x.to_i * 2 else x = x.to_i end }
  end

  def sum(number)
    @number.map!{|x| x.to_s}.join('').split('').map!{|x| x.to_i}.reduce(:+)
  end

  def check_card
   if sum(double(@number)) % 10 == 0
     return true
   else
     return false
   end
  end

end


creditcard = CreditCard.new(4408041234567906)
# p creditcard.double
# p creditcard.sum
p creditcard.check_card



=begin
# Reflection

What was the most difficult part of this challenge for you and your pair?
The most difficult part for my pair and I was trying to figure out how to pass the data onto the check_card method without running the other two methods first.

What new methods did you find to help you when you refactored?
We used the reduce method to sum up the numbers inside the sum method.
The refactored sum method may be slightly difficult to read however.


What concepts or learnings were you able to solidify in this challenge?
I became more comfortable with classes and how data is moved between them.
I was also able to be much more comfortable using the map method.



=end