class Activity < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :trip

  # Indirect associations

  has_one    :planner,
             :through => :trip,
             :source => :planner

  # Validations

  validates :time_of_day, :inclusion => { :in => [ "morning", "afternoon", "night" ]  }

  # Scopes

  def to_s
    trip.to_s
  end

end
