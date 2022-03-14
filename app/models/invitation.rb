class Invitation < ApplicationRecord
  # Direct associations

  belongs_to :trip

  belongs_to :invited_user,
             :class_name => "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    invited_user.to_s
  end

end
