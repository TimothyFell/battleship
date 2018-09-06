require 'pry'

puts "What's your name?"
p ">"
player_name = gets.chomp
game = Game.new(player_name)

game.computer_place_ships

puts "You now need to layout your two ships."
puts "The first is two units long and the"
puts "second is three units long."
puts "The grid has A1 at the top left and D4 at the bottom right."
puts "Enter the squares for the two-unit ship:"

ship_2_coords = gets.chomp
game.player_place_ship_2(ship_2_coords)

puts "Enter the squares for the three-unit ship:"

ship_3_coords = gets.chomp
game.player_place_ship_3(ship_3_coords)
