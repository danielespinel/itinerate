class User < ApplicationRecord
  include JwtToken
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

  # Validations

  validates :email, presence: true

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :password, presence: true

  # Scopes

  def to_s
    first_name
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
