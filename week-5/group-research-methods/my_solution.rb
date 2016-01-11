# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array,letter)
  new_array = array.dup
  array_result = new_array.grep(/#{letter}/)
  p array_result
  

  end

def my_hash_finding_method(hash, value)
  new_array = []
  hash.each do |k,v|
    if v == value
      new_array << k
    end
    end
  p new_array
end
=begin
#Driver Code
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

my_array_finding_method(i_want_pets, "t")
p i_want_pets
my_hash_finding_method(my_family_pets_ages, 3)
p my_family_pets_ages


Identify and describe the Ruby method you implemented
.dup creates a duplicate of the element its being called on. I like using it for when I am making non-destructive methods.
.grep takes a pattern and returns every element that contains it. The syntax for it is what gave me a lot of trouble.


Teach your accountability group how to use the methods
.dup is used by adding it to the method you want it to duplicate. For example,  new_array = array.dup, makes a new array called new_array that is a duplciate of array.
.grep is used by adding it to the method you want it to iterate over and you put the pattern you want it to check for afterwards. For example, array_result = new_array.grep(/#{letter}/), this puts any elements in new_array that contain the pattern of "letter" into array_result. 

Share any tricks you used to find and decipher the Ruby Docs
I don't really have any tricks to deciper the ruby docs, I just read through them all and tried to find ones that make sense.
Even after reading them a few times I was having problems with syntax on grep and was trying new things over and over.



=end
# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array,letter)
  new_array = array.dup
  array_result = new_array.grep(/#{letter}/)
  p array_result
  

  end

def my_hash_finding_method(hash, value)
  new_array = []
  hash.each do |k,v|
    if v == value
      new_array << k
    end
    end
  p new_array
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(array, number)
  array.map! do |x| 
    if x.is_a? Fixnum
      p x += number
    else
      p x
    end
  end
end

def my_hash_modification_method!(hash, number)
  hash.keys.each do |k|
    hash[k] += number
  end
  p hash
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  return source.sort_by {|i| i.to_s }
  #=> [2, 3, "I", "but", "have", "only", "pets", "want"]
end

source = [["Annabelle", 0], ["Ditto", 2], ["Hoobie", 3], ["Bogart", 4], ["Poly", 5], ["Evi", 6], ["George", 12]]

def my_hash_sorting_method(source)
  return source.sort_by{|k,v| v}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
    source.delete_if {|array| array.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
    source.delete_if {|key,value| key.include? thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
