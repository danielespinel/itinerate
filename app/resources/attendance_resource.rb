class AttendanceResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :trip_id, :integer
  attribute :attendee_id, :integer

  # Direct associations

  belongs_to :trip

  belongs_to :attendee,
             resource: UserResource

  # Indirect associations

end
