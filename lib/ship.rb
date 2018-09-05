require 'pry'

class Ship

  attr_reader :size

  def initialize(size_arg, board_arg)
    @size = size_arg
    @board = board_arg
    @character_map = {
      "A" => 2,
      "B" => 3,
      "C" => 4,
      "D" => 5
    }
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

  def place(array_indices)
    array_indices.each do |index_array|
      row = index_array[0]
      col = index_array[1]
      @board.board_array[row][col] = "S"
    end
  end

end
