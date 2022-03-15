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
  end

  describe "Validations" do
    it { should validate_presence_of(:email) }

    it { should validate_presence_of(:first_name) }

    it { should validate_presence_of(:last_name) }

    it { should validate_presence_of(:password) }
  end
end
