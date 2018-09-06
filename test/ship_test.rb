require './test/test_helper'
require './lib/board'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    player_board = Board.new("Tim")
    ship_2 = Ship.new(2)

    assert_instance_of Ship, ship_2
  end

  def test_it_has_length
    player_board = Board.new("Tim")
    ship_2 = Ship.new(2)
    ship_3 = Ship.new(3)

    assert_equal 3, ship_3.size
    assert_equal 2, ship_2.size
  end

end
