require "rails_helper"

RSpec.describe "available_days#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/available_days/#{available_day.id}", payload
  end

  describe "basic update" do
    let!(:available_day) { create(:available_day) }

    let(:payload) do
      {
        data: {
          id: available_day.id.to_s,
          type: "available_days",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(AvailableDayResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { available_day.reload.attributes }
    end
  end
end
