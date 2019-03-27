require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < MiniTest::Test
  def setup
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @kitt = Character.new({ name: 'KITT', actor: 'William Daniels', salary: 1_000_000})
    @michael_knight = Character.new({ name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000})
  end

  def test_show_class_exists
    assert_instance_of Show, @knight_rider
  end

  def test_show_class_has_a_name
    assert_equal 'Knight Rider', @knight_rider.name
  end

  def test_show_class_has_a_creator
    assert_equal 'Glen Larson', @knight_rider.creator
  end

  def test_show_begins_with_kitt_and_michael_knight_characters
    @add.character(@michael_knight)
    @add.character(@kitt)
    assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end
end
