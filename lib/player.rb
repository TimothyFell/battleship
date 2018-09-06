require 'pry'

class Player

  attr_reader :name,
              :player_board,
              :ship_2,
              :ship_3

  def initialize(name_arg)
    @name = name_arg
    @player_board = Board.new(name_arg)
    @ship_2 = Ship.new(2)
    @ship_3 = Ship.new(3)

  end

  def place_ship(ship, coordinates)
    
  end

  def shoot()

  # def shoot(indices, board)
  #   indices.flatten
  #   row = indices[0]
  #   col = indices[1]
  #
  #   if board.board_array[row][col] == "H" || board.board_array[row][col] == "M"
  #     puts "You already shot there, try again!"
  #
  #   elsif board.board_array[row][col] == "S"
  #     board.board_array[row][col] = "H"
  #
  #   elsif board.board_array[row][col] == " "
  #     board.board_array[row][col] = "M"
  #
  #   else
  #     "That isn't a spot on the board, try again!"
  #
  #   end
  # end

end
