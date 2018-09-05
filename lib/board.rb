require 'pry'

class Board

  attr_reader :board_name

  attr_accessor :board_array

  def initialize(name_arg)
    @board_name = "#{name_arg}'s Board"
    @board_array = make_board
  end

  def make_board
    [ ["=","=","=","=","=","=","=","=","="],
      ["."," ","1"," ","2"," ","3"," ","4"],
      ["A"," "," "," "," "," "," "," "," "],
      ["B"," "," "," "," "," "," "," "," "],
      ["C"," "," "," "," "," "," "," "," "],
      ["D"," "," "," "," "," "," "," "," "],
      ["=","=","=","=","=","=","=","=","="] ]
  end

  def print_board
    @board_name + "\n" +
    @board_array[0].join + "\n" +
    @board_array[1].join + "\n" +
    @board_array[2].join + "\n" +
    @board_array[3].join + "\n" +
    @board_array[4].join + "\n" +
    @board_array[5].join + "\n" +
    @board_array[6].join
  end

end
