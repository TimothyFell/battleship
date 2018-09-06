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

  def place_ship(ship, placement_coords)
    @player_board.board_hash[placement_coords].contents = ship
    @player_board.board_hash[placement_coords].appearance = "S"
  end

  def shoot(shot_coordinates, board)
    board.board_hash[shot_coordinates].shot_at = true
    if board.board_hash[shot_coordinates].appearance == " "
      board.board_hash[shot_coordinates].appearance = "M"
      "You shot at #{shot_coordinates} and it was a miss!"
    elsif board.board_hash[shot_coordinates].appearance == "S"
      board.board_hash[shot_coordinates].appearance = "H"
      board.board_hash[shot_coordinates].contents.health -= 1
      "You shot at #{shot_coordinates} and hit a ship!"
    else
      "That is not a valid shot!"
    end
  end

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
