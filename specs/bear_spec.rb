require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')

class TestBear < MiniTest::Test

  def setup

    @bear = Bear.new("Yoggi", "Grizzly", [])

  end

  def test_bear_return_name
    assert_equal("Yoggi", @bear.bear_name)
  end

  def test_bear_return_type
    assert_equal("Grizzly", @bear.bear_type)
  end

  def test_eat_fish_from_river
    @bear.eat_fish_from_river("Terry")
    assert_equal(1, @bear.stomach.length)
  end

end
