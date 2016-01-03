# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => " unexpected end-of-input, expecting keyword_end" which I believe means that there is a missing end.
# 5. Where is the error in the code?
# => It says the error is at "# Write your reflection below as a comment." but
# 6. Why did the interpreter give you this error?
# => We received an error because there is no end to the while statement.

# --- error -------------------------------------------------------

south_park = "great"

# 1. What is the line number where the error occurs?
# =>  36
# 2. What is the type of error message?
# => It is a name error.
# 3. What additional information does the interpreter provide about this type of error?
# => south_park is either an undefined variable or method
# 4. Where is the error in the code?
# => The error is in south_park not being defined.
# 5. Why did the interpreter give you this error?
# => The variable south_park is not defined

# --- error -------------------------------------------------------

 def cartman()
 end

# 1. What is the line number where the error occurs?
# => The error occurs on line 51
# 2. What is the type of error message?
# => The method cartman is undefined.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter gives us an undefined method error.
# 4. Where is the error in the code?
# => The error is in the method cartman.
# 5. Why did the interpreter give you this error?
# => The method cartman was not defined.

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts phrase
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 67 and 71
# 2. What is the type of error message?
# => There is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => There is a difference in the amount of arguments the method wants and is being given.
# 4. Where is the error in the code?
# => The error is the amount of arguments the method cartman_says receives.
# 5. Why did the interpreter give you this error?
# => The method was not calling for arguments but one was being given to it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You are stinky!")

# 1. What is the line number where the error occurs?
# => 86
# 2. What is the type of error message?
# => Argument error 
# 3. What additional information does the interpreter provide about this type of error?
# => There are 0 arguments being given when one is being requested.
# 4. Where is the error in the code?
# => The error is on line 90 where the method is being called without an argument.
# 5. Why did the interpreter give you this error?
# => We got this error because the method calls for an argument but when it is called it isn't being given one.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming','Stan!')

# 1. What is the line number where the error occurs?
# =>  The error occurs on line 107 due to the wrong number of arguments on line 111.
# 2. What is the type of error message?
# => It is an argument error message.
# 3. What additional information does the interpreter provide about this type of error?
# => It says there are 1 for 2 arguments received for this method.
# 4. Where is the error in the code?
# => The error is in the number of arguments the method gives when it is being called.
# 5. Why did the interpreter give you this error?
# => The method is defined as requiring two arguments but it only received one when it was called.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 126
# 2. What is the type of error message?
# => It is a TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# => A string can't be coerced into a Fixnum.
# 4. Where is the error in the code?
# => The error is in the fact that the string comes after the integer. It is in essence telling you to multiply 5 by "Respect my authoritay!" which doesn't make sense.
# 5. Why did the interpreter give you this error?
# => The string and the integer are reversed in their positioning.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# => 141
# 2. What is the type of error message?
# => The error is a Zero Division Error.
# 3. What additional information does the interpreter provide about this type of error?
# => Something is attempting to divide by zero
# 4. Where is the error in the code?
# => The error is in the amount of KFC being divided by zero.
# 5. Why did the interpreter give you this error?
# => You can't divide by zero!

# --- error -------------------------------------------------------

require_relative = "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => The error occurs on line 157.
# 2. What is the type of error message?
# => It was a Load Error message.
# 3. What additional information does the interpreter provide about this type of error?
# => It ties to load the file but it cannot because the file doesn't exist.
# 4. Where is the error in the code?
# => The error is located in the fact that require_relative is not defined
# 5. Why did the interpreter give you this error?
# => The string is missing an = sign inbetween it and the variable.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#The first error was weird because it kept pointing to the last line. 
#How did you figure out what the issue with the error was?
#I figured since line 170 was commented it was probably something higher up in the file and started from the top.
#Were you able to determine why each error message happened based on the code? 
#Yes the error messages were not too difficult to figure out once you have some understanding of the terms.
#When you encounter errors in your future code, what process will you follow to help you debug?
# I will try to use the steps I followed in this challenge to figure out any errors I encounter in the future. The challenge was a good way of opening my eyes to different kinds of errors that can happen and the ways to deal with them.