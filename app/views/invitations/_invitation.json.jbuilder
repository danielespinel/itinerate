json.extract! invitation, :id, :invited_user_id, :trip_id, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
