require 'pry'

class Game

  attr_reader :player,
              :computer

  def initialize(name_arg)
    @computer = Player.new("Computer")
    @player = Player.new(name_arg)
    @character_map = {
      "A" => 2,
      "B" => 3,
      "C" => 4,
      "D" => 5
    }
    @valid_shots = ["A1", "A2", "A3", "A4",
                      "B1", "B2", "B3", "B4",
                      "C1", "C2", "C3", "C4",
                      "D1", "D2", "D3", "D4" ]
    @valid_ship_2_spots = []
    @valid_ship_3_spots = []
  end

  def computer_place_ships

    @computer.place_ship(@computer.ship_2)
    @computer.place_ship(@computer.ship_3)
    puts "I have laid out my ships on the grid."
  end

  def player_place_ship_2(ship_2_coords)
    binding.pry
    ship_2_indices = convert_user_input(ship_2_coords)
    @player.ship_2.place(ship_2_indices)
  end

  def player_place_ship_3(ship_3_coords)
    ship_3_indices = convert_user_input(ship_3_coords)
    @player.ship_3.place(ship_3_indices)
  end

  def round
    # computer shoots
    prng = Random.new
    coord = @valid_shots.sample
    @valid_shots.delete(coord)
    comp_shot_indices = convert_user_input(coord)
    @computer.shoot(comp_shot_indices, @player.player_board)
    puts "The Computer shot #{coord} and #{hit/miss}!"
    puts @player.player_board.print_board
    puts @computer.player_board.print_board

    # player shoot
    puts "What coordinate will you fire at?"
    shot = gets.chomp
    shot_indices = convert_user_input(shot)
    @player.shoot(shot_indices, @computer.player_board)

    # print both boards
    puts "You shot at #{shot} and #{}!"
    puts @player.player_board.print_board
    puts @computer.player_board.print_board
  end

  def convert_user_input(coords)
    coords_array = coords.split(" ")

    new_coords_array = coords_array.map do |coord|
      coord_chars = coord.chars
      coord_chars[0] = @character_map[coord_chars.first]
      coord_chars[-1] = coord_chars.last.to_i * 2
      coord_chars
    end

    return new_coords_array
  end

end
