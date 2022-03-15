require "rails_helper"

RSpec.describe AvailableDay, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:trip) }
  end

  describe "InDirect Associations" do
    it { should have_one(:planner) }
  end

  describe "Validations" do
  end
end
