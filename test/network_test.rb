require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class NetworkTest < MiniTest::Test
  def setup
    @nbc = Network.new("NBC")
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @kitt = Character.new({ name: 'KITT', actor: 'William Daniels', salary: 1_000_000})
    @michael_knight = Character.new({ name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000})
  end

  def test_network_class_exists
    assert_instance_of Network, @nbc
  end
end
