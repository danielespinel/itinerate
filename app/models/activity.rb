class Activity < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :trip

  # Indirect associations

  # Validations

  validates :time_of_day, :inclusion => { :in => [ "morning", "afternoon", "night" ]  }

  # Scopes

  def to_s
    trip.to_s
  end

end
