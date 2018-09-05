require 'pry'

class Player

  attr_reader :name,
              :player_board

  def initialize(name_arg)
    @name = name_arg
    @player_board = Board.new(name_arg)
    @ship_2 = Ship.new(2)
    @ship_3 = Ship.new(3)
  end

  def place_ship(ship, coords)
    ship.place(coords)
  end

end
