require 'pry'

class Space

  attr_reader :name

  attr_accessor :shot_at,
                :contents,
                :appearance

  def initialize(name)
    @name = name
    @shot_at = false
    @contents = nil
    @appearance = " "
  end

  def shot?
    @shot_at
  end

end
