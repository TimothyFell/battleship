require 'pry'

class Ship

  attr_accessor :health

  def initialize(health_arg)
    @health = health_arg
  end

  def sunk?
    return true if @health == 0
  end

end
