class TripResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :start_date, :date
  attribute :end_date, :string
  attribute :location, :string
  attribute :name, :string
  attribute :image, :string
  attribute :planner_id, :integer

  # Direct associations

  has_many   :attendances

  has_many   :activities

  belongs_to :planner,
             resource: UserResource

  # Indirect associations

end
