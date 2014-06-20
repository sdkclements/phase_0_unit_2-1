# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with angela.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
 
  #your code here
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard
  attr_reader :grid

  def initialize (grid)
    @grid = grid
  end

  def create_word(*coords)
    coords.map { |coord| @grid[coord.first][coord.last]}.join("")
  end

  def get_row(row)
    @grid[row]
  end

  def get_col(col)
    @grid.map{|i| i[col]}
  end

 end


  dice_grid = [["b", "r", "a", "e"],
               ["i", "o", "d", "t"],
               ["e", "c", "l", "r"],
               ["t", "a", "k", "e"]]

  boggle_board = BoggleBoard.new(dice_grid)

  # 4. Refactored Solution






  #1. DRIVER TESTS GO BELOW THIS LINE
 # create driver test code to retrieve a value at a coordinate here:
  #implement tests for each of the methods here:
  p boggle_board.create_word [1,2],[1,1],[2,1],[3,2]
  p boggle_board.get_row(0).join
  p boggle_board.get_row(1).join
  p boggle_board.get_row(2).join
  p boggle_board.get_row(3).join
  p boggle_board.get_col(0).join
  p boggle_board.get_col(1).join
  p boggle_board.get_col(2).join
  p boggle_board.get_col(3).join

p boggle_board.create_word([3,2]) == "k"
p boggle_board.create_word([0,2]) == "a"
p boggle_board.create_word([2,1]) == "c"

  



  # 5. Reflection





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection 