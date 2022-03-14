class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many   :comments,
             foreign_key: :commenter_id

  has_many   :trips,
             foreign_key: :planner_id

  # Indirect associations

end
