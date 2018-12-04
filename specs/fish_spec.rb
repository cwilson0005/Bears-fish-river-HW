require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup

    @fish = Fish.new("Terry")

  end

  def test_return_fish_name
    assert_equal("Terry", @fish.fish_name)
  end

end
