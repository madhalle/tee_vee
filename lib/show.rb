class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.sum do |character|
      character.salary
    end
    # total_salary = 0
    # characters.each do |character|
    #   total_salary += character.salary
    # end
    # total_salary
  end

  def highest_paid_actor
    # character_object = characters.max_by do |character|
    #   character.salary
    # end
    # character_object.actor
    # characters.max_by do |character|
    #   character.salary
    # end.actor
    salaries = []
    characters.each do |character|
      salaries << character.salary
    end

    rich_character = nil
    characters.each do |character|
      if character.salary == salaries.max
        rich_character = character
      end
    end
    rich_character.actor
  end

  def actors
    # characters.map do |character|
    #   character.actor
    # end
    character_array = []
    characters.each do |character|
      character_array << character.actor
    end
    character_array
  end
end
