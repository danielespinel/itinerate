require "rails_helper"

RSpec.describe "attendances#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/attendances", params: params
  end

  describe "basic fetch" do
    let!(:attendance1) { create(:attendance) }
    let!(:attendance2) { create(:attendance) }

    it "works" do
      expect(AttendanceResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["attendances"])
      expect(d.map(&:id)).to match_array([attendance1.id, attendance2.id])
    end
  end
end
