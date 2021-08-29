class PeopleParser
    def initialize(input)
        @input = input
    end

    def parse(people_info)
        people_info.map { |person_info| People.new(person_info) }
    end

    protected

    attr_reader :input
end