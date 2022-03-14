require 'rails_helper'

RSpec.describe "attendances#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/attendances/#{attendance.id}", payload
  end

  describe 'basic update' do
    let!(:attendance) { create(:attendance) }

    let(:payload) do
      {
        data: {
          id: attendance.id.to_s,
          type: 'attendances',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(AttendanceResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { attendance.reload.attributes }
    end
  end
end
