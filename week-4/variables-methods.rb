puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + ',it is nice to meet you!'

puts 'What is your favorite number?'
number = gets.chomp 
puts "I think #{number.to_i + 1} is a bigger and better number!"

[Address](https://github.com/Petey101/phase0/blob/master/week-4/address/my_solution.rb)

[Math](https://github.com/Petey101/phase0/blob/master/week-4/math/my_solution.rb)

=begin 
How do you define a local variable?
	You assign a variable by giving it a name and making it = to a value.

How do you define a method?
	You define a method by using the def command to name it and then giving values to accept.

What is the difference between a local variable and a method?
 A method accepts arguments and a variable always points to something.

How do you run a ruby program from the command line?
	"ruby file-name.rb" runs the ruby file in your command line.

How do you run an RSpec file from the command line?
	"rspec spec-file-name.rb" runs the RSpec file from the command line.

What was confusing about this material? What made sense?
	Nothing about the material was too confusing. I needed to go back to refresh myself on some syntax, but otherwise it wasn't too difficult.
=end