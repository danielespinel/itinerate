require "rails_helper"

RSpec.describe Invitation, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:trip) }

    it { should belong_to(:invited_user) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
