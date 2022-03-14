class ActivityResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :trip_id, :integer
  attribute :name, :string
  attribute :day, :date
  attribute :time_of_day, :string
  attribute :description, :string
  attribute :image, :string

  # Direct associations

  # Indirect associations

end
