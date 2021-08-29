require './app/lib/people_parser'
require 'csv'

class PeoplePercentParser < PeopleParser
  def separator
    '%'
  end
end
