#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode
=begin
# Input: Name 
# Output: Greeting
# Steps: Define two classes "NameData" and "Greetings"
NameData will take a variable with my name (Use attr_methods for variables)
Greetings will initialize an instance of NameData and return a greeting to the console.




=end
class NameData
	attr_accessor :name
	def initialize
		@name = "Peter"
	end

end


class Greetings
	def initialize
		@firstname = NameData.new
	end

	def hello
		p "Hello #{@firstname.name}! How wonderful to see you today."
	end

end
greet = Greetings.new
greet.hello



# Reflection
=begin
Release 1 
What are these methods doing?
"initialize" gives default values for the three isntance variables.
"print_info" prints the values for the three instance variables.
"what_is_age" returns @age
"change_my_age" changes @age to new_age
"what_is_name" returns @name
"change_my_name" changes @name to new_name
"what_is_occupation" returns @occupation
"change_my_occupation" changes @occupation to new_occupation

How are they modifying or returning the value of instance variables?
The instance variables are being changed and the print_info method will return those changed variables.


Release 2 
What changed between the last release and this release?
The "what_is_age" method has been removed and the  attr_reader :age was added in its place.

What was replaced?
The "what_is_age" method has been removed.

Is this code simpler than the last?
This code is simpler to read, but you must understand what the attr_reader :age does for it to be simpler.


Release 3
What changed between the last release and this release?
The "change_my_age" method has been removed and the  attr_writer :age was added in its place.

What was replaced?
The "change_my_age" method has been removed.

Is this code simpler than the last?
This code is simpler to read, but you must understand what the attr_writer :age does for it to be simpler.


Release 6
What is a reader method?
A reader method allows you to call upon the value of the variable by just calling upon the method.

What is a writer method?
A writer method allows you to change the value of the variable by making it equal to something else outside of the class.

What do the attr methods do for you?
The attr methods allow you to alter the values of the variables outside of the classes.

Should you always use an accessor to cover your bases? Why or why not?
You should not always use an accessor to cover your bases because it allows for security risks. There are some things you don't want outside sources to be able to change.

What is confusing to you about these methods?
These methods aren't too confusing, but the sending data between classes had me stumped. 
I am not entirely used to the syntax for it yet and I will need more practice.


=end

