# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[outer][inner]["almost"][3]
#hash[outer:][inner]["almost"][3]
#hash[outer:][inner]["almost"][3]
#hash[inner]["almost"][3]
#hash["almost"][3]
#hash[outer:]
#p hash[0][0]
#p hash[outer:inner:"almost"][3]
#p hash[outer:][inner:]["almost"][3]
#hash[outer:,inner:]["almost"][3]
#hash[outer:[inner:]["almost"][3]

#hash.each do |element|
  #if element.kind_of?(Hash)
    #element.each {|key, value| puts value}
  #end
#end

p hash[:outer][:inner]["almost"][3]
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[array:][1][hash:]
#p nested_data[array:[1]][hash:]

#nested_data.each do |element|
  #if element.kind_of?(Hash)
    #element.each {|key,value| p value}
  #end
#end

#nested_data.each do |element|
  #if element.kind_of?(Array)
    #p element
  #end  
#end
#p nested_data.class
    
p nested_data[:array ][1][:hash]
    

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|

  if element.kind_of?(Array)
    element.map! {|inner_array|  inner_array + 5}
  else
     element + 5
  end
  end
p number_array 
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def ly(words)
  names = words.flatten
  new_names = []
  names.each {|x| new_names << x + "ly"}
   p new_names
end

ly(startup_names)


nested_hash = {:outer_key => {:inner_key => "Winner!"}}
p nested_hash[:outer_key][:inner_key]

=begin
What are some general rules you can apply to nested arrays?
Nested arrays are simply arrays within other arrays. To call upon nested arrays you call upon the index position it is in inside its current array.

What are some ways you can iterate over nested arrays?
You can use .kind_of? to iterate over arrays inside of other arrays. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I ended up just using kind_of? from the examples to work with this challenge. I understood it more than other methods I found and decided comfort was the way to go in the beginning.

	
end