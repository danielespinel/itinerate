class Attendance < ApplicationRecord
  # Direct associations

  belongs_to :trip

  belongs_to :attendee,
             class_name: "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    trip.to_s
  end
end
