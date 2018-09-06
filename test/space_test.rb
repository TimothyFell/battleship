require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/space'

class SpaceTest < Minitest::Test

  def test_it_exists
    space_a1 = Space.new("A1")

    assert_instance_of Space, space_a1
  end

  def test_it_has_attributes
    space_a1 = Space.new("A1")

    assert_equal "A1", space_a1.name
    assert_equal false, space_a1.shot_at
    assert_equal nil, space_a1.contents
    assert_equal " ", space_a1.appearance
  end

  def test_some_attributes_can_be_set
    space_a1 = Space.new("A1")

    space_a1.shot_at = true
    space_a1.contents = ["nothing"]
    space_a1.appearance = "M"

    assert_equal true, space_a1.shot_at
    assert_equal ["nothing"], space_a1.contents
    assert_equal "M", space_a1.appearance
  end

  def test_shot_query
    space_a1 = Space.new("A1")

    assert_equal false, space_a1.shot?
  end

end
