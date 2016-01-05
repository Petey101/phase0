# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # separate single string into several
  # create empty hash
  # insert each string as key
  # set default quantity as value
  # call print_list method
# output: hash

# Method to add an item to a list
# input: list name, item name and optional quantity
# steps:
  # add key/value pair (item and quantity)
# output: updated hash

# Method to remove an item from the list
# input: list name, item name
# steps:
  # remove key
# output: edited hash

# Method to update the quantity of an item
# input: list name, item name, updated quantity
# steps: reassign a item name's quantity to updated quantity
# output: edited hash

# Method to print a list and make it look pretty
# input: list name
# steps: print keys and values using interpolation
# output: a pretty string

def createlist(items)
  new_items = items.split(" ")
  list = Hash.new
  new_items.each {|item| list[item] = 1}
   prettylist(list)
  # use print_list method
end


def additem(list, item, quantity=1)
  list[item] = quantity
  p list
end

def rmitem(list, item)
  list.delete(item)
  p list
end

def chngqnt(list, item, quantity)
  list[item] = quantity
  p list
end

def prettylist (list)
  list.each {|item ,quantity| p "We want to buy #{quantity} #{item}" }
end


# DRIVER CODE

testlist = createlist("carrots apples cereal pizza")

additem(testlist, "hat", 2)

additem(testlist, "bike")

rmitem(testlist, "carrots")

chngqnt(testlist, "carrots", 100 )
  
prettylist(testlist)

#What did you learn about pseudocode from working on this challenge?
# Pseudocode is great for planning out the steps and helping you figure out where you need help.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#We used hashes for this challenge because we needed to establish key value pairs. 

#What does a method return?
# A method returns the value from the last function after it passes through the method's functions.

#What kind of things can you pass into methods as arguments?
# You can pass integers, strings or arrays into methods as arguments.

#How can you pass information between methods?
# You can pass information between methods by assigning the output of a method to a variable.

#What concepts were solidified in this challenge, and what concepts are still confusing?
# The difference between hashes and arrays were clear after this challenge. 
#Methods were made more clear but I still have some dark spots that cause me to question myself.