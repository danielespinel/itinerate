require "rails_helper"

RSpec.describe AvailableDayResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "available_days",
          attributes: {},
        },
      }
    end

    let(:instance) do
      AvailableDayResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { AvailableDay.count }.by(1)
    end
  end

  describe "updating" do
    let!(:available_day) { create(:available_day) }

    let(:payload) do
      {
        data: {
          id: available_day.id.to_s,
          type: "available_days",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      AvailableDayResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { available_day.reload.updated_at }
      # .and change { available_day.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:available_day) { create(:available_day) }

    let(:instance) do
      AvailableDayResource.find(id: available_day.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { AvailableDay.count }.by(-1)
    end
  end
end
