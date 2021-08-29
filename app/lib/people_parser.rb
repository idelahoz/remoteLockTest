require './app/lib/person'

class PeopleParser
  def initialize(input)
      @input = input
  end

  def people
    raise NotImplementedError
  end

  protected

  attr_reader :input

  def get_people_objects(people_info)
    people_info.map { |person_info| Person.new(person_info) }
  end
end