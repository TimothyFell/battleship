require './test_helper'
require './lib/board'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    player_board = Board.new("Tim")
    player_coords = Coordinates.new(player_board)
    ship_2 = Ship.new(2, player_coords)

    assert_instance_of Ship, ship_2
  end

  def test_it_has_length
    player_board = Board.new("Tim")
    player_coords = Coordinates.new(player_board)
    ship_2 = Ship.new(2, player_coords)

    assert_equal 2, ship_2.size
  end

  def test_it_can_have_different_lengths
    player_board = Board.new("Tim")
    player_coords = Coordinates.new(player_board)
    ship_3 = Ship.new(3, player_coords)

    assert_equal 3, ship_3.size
  end

  def test_can_be_placed_at_coordinates
    skip
    player_board = Board.new("Tim")
    player_coords = Coordinates.new(player_board)
    ship_2 = Ship.new(2, player_coords)
    ship_2.place("A1, B1")

    assert_equal true, player_coords.coordinates["A1"].occupied?
    assert_equal true, player_coords.coordinates["B1"].occupied?

  end

end
