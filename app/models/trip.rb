class Trip < ApplicationRecord
  # Direct associations

  has_many   :activities,
             :dependent => :destroy

  belongs_to :planner,
             :class_name => "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end

end
