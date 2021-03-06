class ActivityResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :trip_id, :integer
  attribute :name, :string
  attribute :day, :date
  attribute :time_of_day, :string
  attribute :description, :string
  attribute :image, :string

  # Direct associations

  has_many   :likes

  has_many   :comments

  belongs_to :trip

  # Indirect associations

  has_one    :planner,
             resource: UserResource

  filter :planner_id, :integer do
    eq do |scope, value|
      scope.eager_load(:planner).where(trips: { planner_id: value })
    end
  end
end
