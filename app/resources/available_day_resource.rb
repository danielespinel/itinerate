class AvailableDayResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :day, :datetime
  attribute :day_name, :string
  attribute :trip_id, :integer

  # Direct associations

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
