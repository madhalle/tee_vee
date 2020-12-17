require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest<Minitest::Test

  def test_it_exists_and_has_attributes
    # mike = Character.new( {"name" => "big boi", "actor" => "William Daniels", salary: 1_000_000})
    kitt = Character.new({:name=> "KITT", :actor => "William Daniels", salary: 1_000_000})

    assert_equal "KITT", kitt.name
    assert_equal "William Daniels",kitt.actor
    assert_equal 1000000, kitt.salary
  end
end
