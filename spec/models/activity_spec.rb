require 'rails_helper'

RSpec.describe Activity, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:likes) }

    it { should have_many(:comments) }

    it { should belong_to(:trip) }

    end

    describe "InDirect Associations" do

    it { should have_one(:planner) }

    end

    describe "Validations" do

    it { should validate_inclusion_of(:time_of_day).in_array([ "morning", "afternoon", "night" ]) }

    end
end
