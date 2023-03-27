#tictactoe_game.rb

#TODO implement game board
#TODO implement check_winner function
#
#think about what helper functions i might need
#and encapsulate in modules



#the game board should initialize an array with length of 9.
#the class should have a method for setting elements in the
#array to either 'X' or 'O' by the player
class GameBoard
  attr_accessor :board

  def initialize
    self.board = Array.new(9) { |i| i+1 }
  end

  def display
    # prints the current elements of the board array to the console in a three by three grid
    puts ""
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts ""
  end

  def set_X(number)
    if board.include?(number)
      board[number - 1] = 'X'
    else
      puts "invalid move"    #perhaps move this out of these functions and check condition in a while loop
    end
  end

  def set_O(number)
    if board.include?(number)
      board[number -1] = 'O'
    else
      puts "invalid move"
    end
  end
end



game_board = GameBoard.new
game_board.display
game_board.set_X(4)
game_board.set_O(5)
game_board.set_X(5)
game_board.display

