class User < ApplicationRecord
  # Direct associations

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
