# Factorial

#taking a positive integer as input and returning the factorial of that input
# if the input is equal to 1 or 0 returns 1
# otherwise multiply the number by the product of all integers up to the input
# return factorial as output
# I worked on this challenge [ with: Chris B].


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    i = number-1
    while i >= 1
      number = number * i
      i = i - 1
    end
    return number
  end
end