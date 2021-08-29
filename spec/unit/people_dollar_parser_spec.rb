require 'spec_helper'
require './app/lib/people_dollar_parser'

RSpec.describe PeopleDollarParser do
  let(:people_string){ 
    File.read('spec/fixtures/people_by_dollar.txt')
  }

  let(:parser){
    PeopleDollarParser.new(people_string)
  }

  describe "#people" do
    it "should parse string into person instances" do
      expect(parser.people.size).to eq(2)
      expect(parser.people.map(&:first_name)).to eq(["Rhiannon", "Rigoberto"])
      expect(parser.people.map(&:city)).to eq(["LA", "NYC"])
      expect(parser.people.map(&:birth_date)).to eq([Date.new(1974, 4, 30), Date.new(1962, 1, 5)])
    end
  end
end