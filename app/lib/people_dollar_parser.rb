require './app/lib/people_parser'
require 'csv'

class PeopleDollarParser < PeopleParser
  def separator
    '$'
  end
end
