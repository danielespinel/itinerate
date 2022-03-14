class Activity < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :time_of_day, :inclusion => { :in => [ "morning", "afternoon", "night" ]  }

  # Scopes

  def to_s
    trip.to_s
  end

end
