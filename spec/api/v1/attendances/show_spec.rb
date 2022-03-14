require "rails_helper"

RSpec.describe "attendances#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/attendances/#{attendance.id}", params: params
  end

  describe "basic fetch" do
    let!(:attendance) { create(:attendance) }

    it "works" do
      expect(AttendanceResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("attendances")
      expect(d.id).to eq(attendance.id)
    end
  end
end
