class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many   :likes

  has_many   :invitations,
             foreign_key: :invited_user_id

  has_many   :attendances,
             foreign_key: :attendee_id

  has_many   :comments,
             foreign_key: :commenter_id

  has_many   :trips,
             foreign_key: :planner_id

  # Indirect associations

  has_many :activities do
    assign_each do |user, activities|
      activities.select do |a|
        a.id.in?(user.activities.map(&:id))
      end
    end
  end

  has_many :available_days do
    assign_each do |user, available_days|
      available_days.select do |a|
        a.id.in?(user.available_days.map(&:id))
      end
    end
  end
end
