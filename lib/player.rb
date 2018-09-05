require 'pry'

class Player

  attr_reader :name,
              :player_board,
              :ship_2,
              :ship_3

  def initialize(name_arg)
    @name = name_arg
    @player_board = Board.new(name_arg)
    @ship_2 = Ship.new(2, @player_board)
    @ship_3 = Ship.new(3, @player_board)
    @character_map = {
      "A" => 2,
      "B" => 3,
      "C" => 4,
      "D" => 5
    }
  end

  def place_ship(ship, coords)
    indices = convert_user_input(coords)
    ship.place(indices)
  end

  def shoot(coord, board)
    indices = convert_user_input(coord).flatten
    row = indices[0]
    col = indices[1]

    if board.board_array[row][col] == "H" || board.board_array[row][col] == "M"
      puts "You already shot there, try again!"

    elsif board.board_array[row][col] == "S"
      board.board_array[row][col] = "H"

    elsif board.board_array[row][col] == " "
      board.board_array[row][col] = "M"

    else
      puts "That isn't a spot on the board, try again!"

    end

  end

  def convert_user_input(coords)
    coords_array = coords.split(" ")
    new_coords_array = coords_array.map do |coord|
      coord_chars = coord.chars
      coord_chars[0] = @character_map[coord_chars.first]
      coord_chars[-1] = coord_chars.last.to_i * 2
      coord_chars
    end
    return new_coords_array
  end

end
