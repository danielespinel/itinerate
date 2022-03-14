class Activity < ApplicationRecord
  # Direct associations

  belongs_to :trip

  # Indirect associations

  # Validations

  validates :time_of_day, :inclusion => { :in => [ "morning", "afternoon", "night" ]  }

  # Scopes

  def to_s
    trip.to_s
  end

end
