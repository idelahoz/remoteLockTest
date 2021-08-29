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
  end

end