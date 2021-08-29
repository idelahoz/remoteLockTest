import ''

class PeopleController
  def initialize(params)
    @params = params
    @dollar_parser = PeopleDollarParser.new(params[:dollar_format])
    @percent_parser = PeoplePercentParser.new(params[:percent_format])
  end

  def normalize
    sort_people(dollar_parser.parse + percent_parser.parse).map(&:to_s)
  end

  private

  def sort_people(people)
    objects.sort_by(&:first_name)
  end

  attr_reader :params, :dollar_parser, :percent_parser
end
