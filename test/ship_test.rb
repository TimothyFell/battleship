require './test_helper'
require './lib/board'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    player_board = Board.new("Tim")
    ship_2 = Ship.new(2, player_board)

    assert_instance_of Ship, ship_2
  end

  def test_it_has_length
    player_board = Board.new("Tim")
    ship_2 = Ship.new(2, player_board)

    assert_equal 2, ship_2.size
  end

  def test_it_can_have_different_lengths
    player_board = Board.new("Tim")
    ship_3 = Ship.new(3, player_board)

    assert_equal 3, ship_3.size
  end

  def test_can_be_placed_at_coordinates
    player_board = Board.new("Tim")
    ship_2 = Ship.new(2, player_board)
    array_indices = ship_2.convert_user_input("A1 B1")
    ship_2.place(array_indices)
  end

end
