class User < ApplicationRecord
  # Direct associations

  has_many   :invitations,
             :foreign_key => "invited_user_id",
             :dependent => :destroy

  has_many   :attendances,
             :foreign_key => "attendee_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commenter_id",
             :dependent => :destroy

  has_many   :trips,
             :foreign_key => "planner_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    first_name
  end

end
