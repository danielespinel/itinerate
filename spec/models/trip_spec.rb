require "rails_helper"

RSpec.describe Trip, type: :model do
  describe "Direct Associations" do
    it { should have_many(:invitations) }

    it { should have_many(:attendances) }

    it { should have_many(:activities) }

    it { should belong_to(:planner) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
