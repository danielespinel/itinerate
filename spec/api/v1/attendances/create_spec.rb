require 'rails_helper'

RSpec.describe "attendances#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/attendances", payload
  end

  describe 'basic create' do
    let(:params) do
      {
        # ... your attrs here
      }
    end
    let(:payload) do
      {
        data: {
          type: 'attendances',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(AttendanceResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Attendance.count }.by(1)
    end
  end
end
