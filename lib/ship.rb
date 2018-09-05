require 'pry'

class Ship

  attr_reader :size

  def initialize(size_arg, board_arg)
    @size = size_arg
    @board = board_arg
  end

  def place(array_indices)
    array_indices.each do |index_array|
      row = index_array[0]
      col = index_array[1]
      @board.board_array[row][col] = "S"
    end
  end

end
