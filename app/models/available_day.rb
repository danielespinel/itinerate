class AvailableDay < ApplicationRecord
  # Direct associations

  belongs_to :trip

  # Indirect associations

  has_one    :planner,
             through: :trip,
             source: :planner

  # Validations

  # Scopes

  def to_s
    day
  end
end
