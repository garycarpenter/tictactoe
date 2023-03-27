#tictactoe_game.rb

#TODO implement game board
#TODO implement player class
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
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
end

#class Player
  #maybe rethink this one... does player need to be a class?
  #there's always going to be two players, and if the game
  #engine knows to alternate X and O each turn and the gameboard
  #instance can check for a winner, what do I really need a player
  #class for unless I wanted to store individual player data
#end

puts game_board = GameBoard.new

puts game_board.display

