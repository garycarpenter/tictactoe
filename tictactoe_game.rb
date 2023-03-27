#tictactoe_game.rb


MAX_TURN = 10
#the game board should initialize an array with length of 9.
#the class should have a method for setting elements in the
#array to either 'X' or 'O' by the player
class GameBoard
  attr_accessor :board

  def initialize
    self.board = Array.new(9) { |i| i+1 }
    puts ":New Game:"
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
    board[number - 1] = 'X'
  end

  def set_O(number)
    board[number -1] = 'O'
  end
end

def game
  game_board = GameBoard.new
  game_board.display
  winner = false
  turn = 1


  #this could be improved...
  def check_winner(game_board_instance)
     #checks to see if there is a winner and breaks the while loop
    if (game_board_instance.board[0] == 'X' && game_board_instance.board[1] == 'X' && game_board_instance.board[2] == 'X') ||
      (game_board_instance.board[3] == 'X' && game_board_instance.board[4] == 'X' && game_board_instance.board[5] == 'X') ||
      (game_board_instance.board[6] == 'X' && game_board_instance.board[7] == 'X' && game_board_instance.board[8] == 'X') ||
      (game_board_instance.board[0] == 'X' && game_board_instance.board[3] == 'X' && game_board_instance.board[6] == 'X') ||
      (game_board_instance.board[1] == 'X' && game_board_instance.board[4] == 'X' && game_board_instance.board[7] == 'X') ||
      (game_board_instance.board[2] == 'X' && game_board_instance.board[5] == 'X' && game_board_instance.board[8] == 'X') ||
      (game_board_instance.board[0] == 'X' && game_board_instance.board[4] == 'X' && game_board_instance.board[8] == 'X') ||
      (game_board_instance.board[2] == 'X' && game_board_instance.board[4] == 'X' && game_board_instance.board[6] == 'X')
      puts "X is the Winner!!"
      return true
    elsif (game_board_instance.board[0] == 'O' && game_board_instance.board[1] == 'O' && game_board_instance.board[2] == 'O') ||
      (game_board_instance.board[3] == 'O' && game_board_instance.board[4] == 'O' && game_board_instance.board[5] == 'O') ||
      (game_board_instance.board[6] == 'O' && game_board_instance.board[7] == 'O' && game_board_instance.board[8] == 'O') ||
      (game_board_instance.board[0] == 'O' && game_board_instance.board[3] == 'O' && game_board_instance.board[6] == 'O') ||
      (game_board_instance.board[1] == 'O' && game_board_instance.board[4] == 'O' && game_board_instance.board[7] == 'O') ||
      (game_board_instance.board[2] == 'O' && game_board_instance.board[5] == 'O' && game_board_instance.board[8] == 'O') ||
      (game_board_instance.board[0] == 'O' && game_board_instance.board[4] == 'O' && game_board_instance.board[8] == 'O') ||
      (game_board_instance.board[2] == 'O' && game_board_instance.board[4] == 'O' && game_board_instance.board[6] == 'O')
      puts "The Winner is O!!"
      return true
    else
      return false
    end
  end

  while winner == false
    if turn.odd?
      puts "Choose X: "
      x = gets.chomp.to_i
      if game_board.board.include?(x)
        game_board.set_X(x)
        turn += 1
      end
    else
      puts "Choose O: "
      o = gets.chomp.to_i
      if game_board.board.include?(o)
        game_board.set_O(o)
        turn += 1
      end
    end
    winner = check_winner(game_board)
    game_board.display
    if turn == MAX_TURN
      break
    end
  end
end

game()




