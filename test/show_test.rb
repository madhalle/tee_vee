require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest<Minitest::Test
  def test_it_exists_and_has_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "Knight Rider", knight_rider.name
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal [michael_knight, kitt], knight_rider.characters
  end

  def test_total_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal 2600000, knight_rider.total_salary
  end

  def test_highest_paid_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "David Hasselhoff", knight_rider.highest_paid_actor
  end

  def test_it_has_actors
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal ["David Hasselhoff", "William Daniels"], knight_rider.actors
  end

  def test_find_all_with_salary_above_given_number
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    michael_scott = Character.new({name: "Michael Scar", actor: "Steve Carell", salary: 1_400_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_scott, kitt, michael_knight])

    assert_equal [michael_scott, michael_knight], knight_rider.actors_with_salaries_above(1_200_000)
  end

end
