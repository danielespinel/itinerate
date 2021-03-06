class Trip < ApplicationRecord
  # Direct associations

  has_many   :available_days,
             dependent: :destroy

  has_many   :invitations,
             dependent: :destroy

  has_many   :attendances,
             dependent: :destroy

  has_many   :activities,
             dependent: :destroy

  belongs_to :planner,
             class_name: "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
