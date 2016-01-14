# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:
1. Initialize the BingoBoard class with a board
#Create board Instance variable here

2. Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#Create instance variables for letter and number to be used throughout the class.
#Make @letter = random letter from  ( b, i, n, g, o)
#Make @number = random number from  (1-100)

3. Check the called column for the number called.
#Create method to check for called number
# Iterate through arrays to find the number
# The called letter will check the corresponding index

4. If the number is in the column, replace with an 'x'
#Create method to replace number with X if it exists

5. Display a column to the console
#Create a method to display numbers of a certain index to the console
#Letter determines index

6. Display the board to the console (prettily)
#Create print board method
#Make sure each subarray is on a new line

=end
# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @letter = "BINGO"[rand(5)]
    @number = rand(0..100)
    case @letter
    when "B"
      @column = 0
    when "I"
      @column = 1
    when "N"
      @column = 2
    when "G"
      @column = 3
    when "O"
      @column = 4
    end
  end

  def check
      @bingo_board.each do |x|
        if @column = 0  &&  @bingo_board[0..4][0] = @number 
          x.map! { |a| a == @number ? "x" : a}
        elsif @column = 1  &&  @bingo_board[0..4][1] = @number 
          x.map! { |a| a == @number ? "x" : a}
        elsif @column = 2  &&  @bingo_board[0..4][2] = @number 
          x.map! { |a| a == @number ? "x" : a}
        elsif @column = 3  &&  @bingo_board[0..4][3] = @number 
          x.map! { |a| a == @number ? "x" : a}   
        else @column = 4  &&  @bingo_board[0..4][4] = @number 
          x.map! { |a| a == @number ? "x" : a}
        end
      end
  end

  def display_column(column_number)
    array = Array.new
    @bingo_board.each do |x|
      x.each_with_index do |y,yi|
        if yi == column_number 
        array << y
       
        end
      end
    end
    p array 
  end

    
  end

  def print_board
    p "B    I    N    G    O"
    row = 0
    while row < 5
      p @bingo_board[row]
      row += 1
    end
    p "Anyone have #{@letter}#{@number}?"
  end

  def play
    call
    check
    print_board
  end

end
=end
# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @bingo = {"B"=>0,"I"=>1,"N"=>2,"G"=>3,"O"=>4} 
    @letter = @bingo.keys.sample
    @number = rand(0..100)
    @column = @bingo[@letter]
  end

  def check
    @updated_board = @bingo_board.dup
    @updated_board.each do |row|
      row.each_with_index do |number,column|
        if number == @number  && column == @column
          row.map! { |number| number == @number ? "x" : number}
        end
      end
    end
  end

  def display_column(column_number)
    array = Array.new
    @bingo_board.each do |row|
      row.each_with_index do |number,column|
        if column == column_number 
          array << number
        end
      end
    end
    p array 
  end
  
  def print_board
    puts "B    I    N    G    O"
    row = 0
    while row < 5
      p @bingo_board[row]
      row += 1
    end
    p "Anyone have #{@letter}#{@number}?"
  end

  def play
    call
    check
    print_board
  end

end

def truebingo
  board = Array.new
  a = Array.new
  a = (1..15).to_a.sample(5)
  b = Array.new
  b = (16..30).to_a.sample(5)
  c = Array.new
  c = (31..45).to_a.sample(5)
  d = Array.new
  d = (46..60).to_a.sample(5)
  e = Array.new
  e = (61..75).to_a.sample(5)
  row1 = Array.new
  row1 << a[0]
  row1 << b[0]
  row1 << c[0]
  row1 << d[0]
  row1 << e[0]
  row2 = Array.new
  row2 << a[1]
  row2 << b[1]
  row2 << c[1]
  row2 << d[1]
  row2 << e[1]
  row3 = Array.new
  row3 << a[2]
  row3 << b[2]
  row3 << "O"
  row3 << d[2]
  row3 << e[2]
  row4 = Array.new
  row4 << a[3]
  row4 << b[3]
  row4 << c[3]
  row4 << d[3]
  row4 << e[3]
  row5 = Array.new
  row5 << a[4]
  row5 << b[4]
  row5 << c[4]
  row5 << d[4]
  row5 << e[4]
  board << row1
  board << row2
  board << row3
  board << row4
  board << row5
  
  puts "B    I    N    G    O"
    row = 0
    while row < 5
      p board[row]
      row += 1
    end
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play
new_game.play
new_game.play
new_game.play
new_game.play
new_game.play
new_game.display_column(1)
truebingo
#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseuodocoding this challenge wasn't too difficult. There were a lot of steps to go over however. I think my pseudocoding style is really lacking and could really use some help.


What are the benefits of using a class for this challenge?
Using a class lets you move around information from method to method very easily.


How can you access coordinates in a nested array?
You can use iteration to iterate over the elements within the elements or you can target them specifically using chain index calls(for example in the array=[[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]], you can target "hook" by calling array[1][1][2][1].)


What methods did you use to access and modify the array?
I used each and each_with_index to access the elements I wanted to. I used map! to collect the statements to returned true and I also used << to put certain elements into another place.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I used sample a lot because it allowed me to generate random unique numbers for many of the situations that arose. You use sample by calling it on an array or hash keys or values. I also learned to use each_with_index to target elements and their corresponding indeces when I needed to iterate.



How did you determine what should be an instance variable versus a local variable?
If the variable needed to be used in other methods, it would save time and energy to make it an instance variable.


What do you feel is most improved in your refactored solution?
I feel like check because is my most improved because of how much simpler it became.

  
=end
