require "rails_helper"

RSpec.describe "available_days#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/available_days", params: params
  end

  describe "basic fetch" do
    let!(:available_day1) { create(:available_day) }
    let!(:available_day2) { create(:available_day) }

    it "works" do
      expect(AvailableDayResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["available_days"])
      expect(d.map(&:id)).to match_array([available_day1.id, available_day2.id])
    end
  end
end
