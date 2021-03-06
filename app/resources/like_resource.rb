class LikeResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :activity_id, :integer
  attribute :user_id, :integer

  # Direct associations

  belongs_to :activity

  belongs_to :user

  # Indirect associations
end
