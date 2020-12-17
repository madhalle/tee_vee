class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_object)
    @shows << show_object
  end

  def main_characters
    @shows.map do |show|
      show.characters.select do |character|
        character.name.upcase == character.name
      end
    end.flatten
  end

  def actors_by_show
    shows_and_actors = {}
    @shows.each do |show|
      shows_and_actors[show] = show.actors
    end
    shows_and_actors
  end
end
