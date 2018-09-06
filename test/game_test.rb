require './test/test_helper'
require './lib/player'
require './lib/board'
require './lib/ship'
require './lib/game'

class GameTest < Minitest::Test

  def test_it_exists
    game_1 = Game.new("Tim")

    assert_instance_of Game, game_1
  end

  def test_player_can_place_ships
    game_1 = Game.new("Tim")

  end

  def test_computer_can_place_ships
    game_1 = Game.new("Tim")

  end

  def test_player_can_take_turn
    game_1 = Game.new("Tim")

  end

  def test_player_gets_feedback_from_turns
    game_1 = Game.new("Tim")

  end

  def test_computer_can_take_turn
    game_1 = Game.new("Tim")

  end


end
