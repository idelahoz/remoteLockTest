require './app/lib/people_parser'
require 'csv'

class PeoplePercentParser < PeopleParser
  def people
    get_people_objects(CSV.parse(input, col_sep: "%", headers: true, strip: true).map(&:to_hash))
  end
end
