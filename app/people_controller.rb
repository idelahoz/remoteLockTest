require './app/lib/people_dollar_parser'
require './app/lib/people_percent_parser'

class PeopleController
  def initialize(params)
    @params = params
    @dollar_parser = PeopleDollarParser.new(params[:dollar_format])
    @percent_parser = PeoplePercentParser.new(params[:percent_format])
  end

  def normalize
    sort_people(dollar_parser.people + percent_parser.people).map(&:to_s)
  end

  private

  def sort_people(people)
    people.sort_by(&:first_name)
  end

  attr_reader :params, :dollar_parser, :percent_parser
end
