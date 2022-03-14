require "rails_helper"

RSpec.describe "attendances#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/attendances/#{attendance.id}"
  end

  describe "basic destroy" do
    let!(:attendance) { create(:attendance) }

    it "updates the resource" do
      expect(AttendanceResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { Attendance.count }.by(-1)
      expect { attendance.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
