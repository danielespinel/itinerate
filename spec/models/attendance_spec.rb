require "rails_helper"

RSpec.describe Attendance, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:trip) }

    it { should belong_to(:attendee) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
