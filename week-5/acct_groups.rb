=begin
Pseudocode
define acct_groups method taking students argument
count size of group
if less than 5 people return the argument
divide up group using the remainder to create functions in the method
fiddle with numbers until desired results
return the acctountability groups.
  
=end

def acct_groups(students)
  students.shuffle!
  if students.length <= 5
    p students
  elsif students.length % 5 == 0 || students.length % 5 == 4
    p students.each_slice(5).to_a
  elsif students.length % 4 == 0 ||students.length % 4 == 3
    p students.each_slice(4).to_a
  elsif 
  students.length % 5 == 3
   p students.each_slice(5).to_a
  else
    p students.each_slice(3).to_a
  end
end

# Driver Code
array = ['a','b','c','d','e','f','g','h','i','j','k']
acct_groups(array)
array_2 = ['a','b','c','d','e']
acct_groups(array_2)
array_3 =  ['a','b','c','d','e','f','g','h']
acct_groups(array_3)
array_4 =  ['a','b','c','d']
acct_groups(array_4)
array_5 = ['a','b','c','d','e','f','g','h','i','j']
acct_groups(array_5)
array_6 =  ['a','b','c','d','e','f']
acct_groups(array_6)
array_7 = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r']
acct_groups(array_7)
array_8 =  ['a','b','c','d','e','f','g','h','i','j','k','l','m']
acct_groups(array_8)
array_9 = [ 'a','b','c','d','e','f','g']
acct_groups(array_9)
array_10 = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','a','b','c','d']
acct_groups(array_10)

=begin
  
What was the most interesting and most difficult part of this challenge?
The most interesting part of the challenge was how relatable to real life situations this could be. I really enjoyed that I could envision this method being used to create groups in school or workplaces for projects.
The most difficult part for me was trying to figure out how to make the groups as equal as possible. 

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Pseudocode is a great tool to have and I feel like the more I do it the more it helps me. Being able to plan the problem out before hand let me dive right into the code knowing what I want to do.

Was your approach for automating this task a good solution? What could have made it even better?
I like my solution for this task. I do feel like there is a better way for me to sort the groups when its a multiple of 5 with a remainder of 3.

What data structure did you decide to store the accountability groups in and why?
The groups are stored in a multi-layered array so you can still see the entire student body and at the same time see the groups they were assigned to.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Shuffle! made randomizing the students much simpler.

=end