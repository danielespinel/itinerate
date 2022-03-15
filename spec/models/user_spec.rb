require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:likes) }

    it { should have_many(:invitations) }

    it { should have_many(:attendances) }

    it { should have_many(:comments) }

    it { should have_many(:trips) }
  end

  describe "InDirect Associations" do
    it { should have_many(:activities) }

    it { should have_many(:available_days) }
  end

  describe "Validations" do
  end
end
