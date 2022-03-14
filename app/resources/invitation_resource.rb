class InvitationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :invited_user_id, :integer
  attribute :trip_id, :integer

  # Direct associations

  # Indirect associations

end
