require "rails_helper"

RSpec.describe "available_days#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/available_days/#{available_day.id}", params: params
  end

  describe "basic fetch" do
    let!(:available_day) { create(:available_day) }

    it "works" do
      expect(AvailableDayResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("available_days")
      expect(d.id).to eq(available_day.id)
    end
  end
end
