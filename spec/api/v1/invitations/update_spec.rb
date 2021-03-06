require "rails_helper"

RSpec.describe "invitations#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/invitations/#{invitation.id}", payload
  end

  describe "basic update" do
    let!(:invitation) { create(:invitation) }

    let(:payload) do
      {
        data: {
          id: invitation.id.to_s,
          type: "invitations",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(InvitationResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { invitation.reload.attributes }
    end
  end
end
