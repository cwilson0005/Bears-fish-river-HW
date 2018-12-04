require_relative('fish')

class River

  attr_reader :river_name
  attr_accessor :fish_in_river

  def initialize(river_name, fish_in_river = [])
    @river_name = river_name
    @fish_in_river = fish_in_river
  end

  def add_fish_to_river(fish)
    @fish_in_river << fish
  end

  def remove_fish_from_river(fish)
    @fish_in_river.delete(fish)
  end

end
