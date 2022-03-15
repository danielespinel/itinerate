class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             dependent: :destroy

  has_many   :invitations,
             foreign_key: "invited_user_id",
             dependent: :destroy

  has_many   :attendances,
             foreign_key: "attendee_id",
             dependent: :destroy

  has_many   :comments,
             foreign_key: "commenter_id",
             dependent: :destroy

  has_many   :trips,
             foreign_key: "planner_id",
             dependent: :destroy

  # Indirect associations

  has_many   :activities,
             through: :trips,
             source: :activities

  has_many   :available_days,
             through: :trips,
             source: :available_days

  # Validations

  # Scopes

  def to_s
    first_name
  end
end
