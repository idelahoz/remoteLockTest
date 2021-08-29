require 'spec_helper'
require './app/lib/people_percent_parser'

RSpec.describe PeoplePercentParser do
  let(:people_string){ 
    File.read('spec/fixtures/people_by_percent.txt')
  }

  let(:parser){
    PeoplePercentParser.new(people_string)
  }

  describe "#people" do
    it "should parse string into person instances" do
      expect(parser.people.size).to eq(2)
      expect(parser.people.map(&:first_name)).to eq(["Mckayla", "Elliot"])
      expect(parser.people.map(&:city)).to eq(["Atlanta", "New York City"])
      expect(parser.people.map(&:birth_date)).to eq([Date.new(1986, 5, 29), Date.new(1947, 5, 4)])
    end
  end
end