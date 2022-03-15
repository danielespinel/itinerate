require "rails_helper"

RSpec.describe "available_days#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/available_days/#{available_day.id}"
  end

  describe "basic destroy" do
    let!(:available_day) { create(:available_day) }

    it "updates the resource" do
      expect(AvailableDayResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { AvailableDay.count }.by(-1)
      expect { available_day.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
