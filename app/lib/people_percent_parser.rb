import './app/lib/people_parser'
import 'csv'

class PeoplePercentParser < PeopleParser
  def parse(input)
    super(CSV.parse(input, col_sep: "%", headers: true, strip: true).map(&:to_hash))
  end
end
