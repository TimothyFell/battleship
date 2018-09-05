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

  def test_it_has_ships
    player_1 = Player.new("Tim")

    assert_instance_of Ship, player_1.ship_2
    assert_instance_of Ship, player_1.ship_3
  end

  def test_it_can_place_ships
    player_1 = Player.new("Tim")
    player_1.place_ship(player_1.ship_2, "A1 B1")
    player_1.place_ship(player_1.ship_3, "A2 A3 A4")

    expected = "Tim\'s Board\n" +
    "=========\n" +
    ". 1 2 3 4\n" +
    "A S S S S\n" +
    "B S      \n" +
    "C        \n" +
    "D        \n" +
    "========="

    assert_equal expected, player_1.player_board.print_board
  end

  def test_can_take_shots_and_get_feedback
    player_1 = Player.new("Tim")
    player_2 = Player.new("George")
    player_2.place_ship(player_2.ship_2, "A1 B1")
    player_1.place_ship(player_1.ship_3, "A2 A3 A4")

    player_1.shoot("A1", player_2.player_board)
    player_1.shoot("B3", player_2.player_board)

    expected_1 = "H"
    assert_equal expected_1, player_2.player_board.board_array[2][2]

    expected_2 = "M"
    assert_equal expected_2, player_2.player_board.board_array[3][6]
  end

end
