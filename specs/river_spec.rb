require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup

    fish_in_river = []

    @river = River.new("Amazon", fish_in_river)

  end

  def test_river_return_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_river_return_fish
    assert_equal([], @river.fish_in_river)
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish_name)
    assert_equal(1, @river.fish_in_river.length)
  end

  def test_remove_fish_from_river
    @river.remove_fish_from_river(@fish_name)
    assert_equal(0, @river.fish_in_river.length)
  end

end
