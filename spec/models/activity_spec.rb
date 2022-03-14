require 'rails_helper'

RSpec.describe Activity, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_inclusion_of(:time_of_day).in_array([ "morning", "afternoon", "night" ]) }

    end
end
