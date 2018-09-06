require './test/test_helper'
require './lib/space'
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

  def test_it_has_ships
    player_1 = Player.new("Tim")

    assert_instance_of Ship, player_1.ship_2
    assert_instance_of Ship, player_1.ship_3
  end

  def test_it_can_place_ships
    player_1 = Player.new("Tim")
    player_1.place_ship(player_1.ship_2, "A1 B1")
    player_1.place_ship(player_1.ship_3, "A2 A3 A4")


  end

  def test_can_take_shots_and_get_feedback
    skip
    player_1 = Player.new("Tim")
    player_2 = Player.new("George")
    player_1.place_ship(player_1.ship_2, "A1 B1")
    player_1.place_ship(player_1.ship_3, "A2 A3 A4")
  end

end
