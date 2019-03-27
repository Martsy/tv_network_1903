class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = :name
    @shows    = []
  end

  def add_show
    @shows << show
  end

  def all_characters
    @shows.flat_map { |show| show.characters }
  end
end
