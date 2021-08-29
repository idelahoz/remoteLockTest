require 'spec_helper'
require './app/lib/person'

RSpec.describe Person do
  let(:person_data){ 
    {
      "first_name" => "marcus", 
      "city" => "paris", 
      "birthdate" => "18-2-1991", 
      "last_name" => "carlsen"
    }
  }

  let(:person){
    Person.new(person_data)
  }

  describe "#to_s" do
    it "should return the correct string representation" do
      expect(person.to_s).to eq("marcus, paris, 2/18/1991")
    end

    describe "with a city in the mapping list" do
      let(:person_data){ 
        {
          "first_name" => "marcus", 
          "city" => "NYC", 
          "birthdate" => "18-2-1991", 
          "last_name" => "carlsen"
        }
      }

      it "should return the right city in the #to_s method" do
        expect(person.to_s).to eq("marcus, New York City, 2/18/1991")
      end
    end
  end
end