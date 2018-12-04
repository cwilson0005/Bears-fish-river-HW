require_relative('river')

class Bear

  attr_reader :bear_name, :bear_type
  attr_accessor :stomach

  def initialize(bear_name, bear_type, stomach)
    @bear_name = bear_name
    @bear_type = bear_type
    @stomach = stomach
  end

  def eat_fish_from_river(fish)
    @stomach << fish
  end

end
