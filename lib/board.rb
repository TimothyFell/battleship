require 'pry'
require './lib/space'

class Board

  attr_reader :board_name,
              :board_hash

  attr_accessor :board_array

  def initialize(name_arg)
    @board_name = "#{name_arg}'s Board"
    @board_hash = {
      'A1' => Space.new('A1'),
      'A2' => Space.new('A2'),
      'A3' => Space.new('A3'),
      'A4' => Space.new('A4'),
      'B1' => Space.new('B1'),
      'B2' => Space.new('B2'),
      'B3' => Space.new('B3'),
      'B4' => Space.new('B4'),
      'C1' => Space.new('C1'),
      'C2' => Space.new('C2'),
      'C3' => Space.new('C3'),
      'C4' => Space.new('C4'),
      'D1' => Space.new('D1'),
      'D2' => Space.new('D2'),
      'D3' => Space.new('D3'),
      'D4' => Space.new('D4'),
    }
  end

  def print_board
    [ ["=","=","=","=","=","=","=","=","="],
      ["."," ","1"," ","2"," ","3"," ","4"],
      ["A"," ","#{@board_hash['A1'].appearance}"," ","#{@board_hash['A2'].appearance}"," ","#{@board_hash['A3'].appearance}"," ","#{@board_hash['A4'].appearance}"],
      ["B"," ","#{@board_hash['B1'].appearance}"," ","#{@board_hash['B2'].appearance}"," ","#{@board_hash['B3'].appearance}"," ","#{@board_hash['B4'].appearance}"],
      ["C"," ","#{@board_hash['C1'].appearance}"," ","#{@board_hash['C2'].appearance}"," ","#{@board_hash['C3'].appearance}"," ","#{@board_hash['C4'].appearance}"],
      ["D"," ","#{@board_hash['D1'].appearance}"," ","#{@board_hash['D2'].appearance}"," ","#{@board_hash['D3'].appearance}"," ","#{@board_hash['D4'].appearance}"],
      ["=","=","=","=","=","=","=","=","="] ]
  end

end

board = Board.new("Tim")
board.board_hash['A1'].appearance = "H"
binding.pry
puts board.print_board
