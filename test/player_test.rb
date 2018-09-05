require './test_helper'
require './lib/board'
require './lib/ship'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_it_exists
    player_1 = Player.new("Tim")
    assert_instance_of Player, player_1
  end

  def test_it_has_board
    player_1 = Player.new("Tim")

    assert_instance_of Board, player_1.player_board
  end

  def test_it_has_coordinates
    player_1 = Player.new("Tim")

    assert_instance_of Coordinates, player_1.player_coordinates
  end

  def test_it_has_ships
    skip
    player_1 = Player.new("Tim")

  end

end
