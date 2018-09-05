require './test_helper'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new("Player")
    assert_instance_of Board, board
  end

  def test_it_has_name
    board = Board.new("Player")
    assert_equal "Player's Board", board.board_name
  end

  def test_it_can_print_to_terminal
    board = Board.new("Player")
    expected = "Player\'s Board\n" +
    "=========\n" +
    ". 1 2 3 4\n" +
    "A        \n" +
    "B        \n" +
    "C        \n" +
    "D        \n" +
    "========="
    assert_equal expected, board.print_board
  end

end
