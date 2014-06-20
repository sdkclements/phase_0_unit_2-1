# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#define a method that takes the whole boggle board and maps the coordinates.

# Initial Solution
#   def initialize (grid)
#     @grid = grid
#   end
#    def get_row(row)
#     @grid[row]
#   end

#   def get_col(col)
#     @grid.map{|i| i[col]}
#   end

# Refactored Solution I dont need to initialize the grid or anything like that, i dont even need to create the row and col methods first.
#all i need to do join to sets of cords once I map the boggle board.

 def create_word(grid, *coords)
    coords.map { |coord| grid[coord.first][coord.last]}.join("")
  end


# I did a later challenge before this one, the dice game and thought i needed to do more than I actually needed to.
#in Order to map all I need is one method.




# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,2])

# Reflection 
#Once again i started off more complicated than i needed to be. I wrote the write code, its just I wrote too much.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(grid, row)
	grid[row]
end
  


# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0] == get_row(boggle_board,0)
# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_col(grid, col)
    grid.map{|i| i[col]}
   end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_col(boggle_board,1)

# Reflection 
# I really enjoyed this challenge. Everytime I work with ruby I am amazed with how simply things can be done, coming from a background where I have
#worked with C++ in the past, ruby is a million times more fluid and simple. This is great, only if
#I can remember how simple the logic can actually be used.
	
