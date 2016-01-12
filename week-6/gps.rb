# Your Names
# 1)Peter Leong
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make) 
  
=begin
  -error_counter = 3

  menu.each do |food|
    if menu[food] != menu[item_to_make]
      error_counter -= 1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end
  if menu.any? {|key,value|key == item_to_make}
    
    serving_size = menu[item_to_make]
  # serving_size = menu.values_at(item_to_make)[0]
    remaining_servings = num_of_servings % serving_size

    case remaining_servings
    when 0
      return "Calculations complete: Make #{num_of_servings / serving_size}  #{item_to_make}(s)"
    when 5..6
      return "Calculations complete: Make #{num_of_servings / serving_size}  #{item_to_make}(s), you have #{remaining_servings} leftover servings. Suggested baking items: Cake"
    else 
      return  "Calculations complete: Make #{num_of_servings / serving_size} #{item_to_make}(s), you have #{remaining_servings} leftover servings. Suggested baking items: Cookies"
    end
  else 
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
 p serving_size_calc("THIS IS AN ERROR", 5)
p serving_size_calc("pie", 13)
=begin
#  Reflection
What did you learn about making code readable by working on this challenge?
I learned that making code that is readable allows others to understand it and maniupulate it for their own purposes. 

Did you learn any new methods? What did you learn about them?
I learned about the any? method and the has_key? method. The any method will iterate over a hash or array and return true if the block ever returns true. 
The has_key? method will iterate over a hash and will return true if any of the keys return true if the block ever returns true.

What did you learn about accessing data in hashes? 
I learned that you can access values in hashes by calling upon their keys. 

What concepts were solidified when working through this challenge?
Accessing values by calling upon keys was solidified in this challenge. I believe that my refactoring has gotten a little better as well after this challenge.

=end
