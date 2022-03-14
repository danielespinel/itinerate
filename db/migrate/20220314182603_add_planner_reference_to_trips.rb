class AddPlannerReferenceToTrips < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :trips, :users, column: :planner_id
    add_index :trips, :planner_id
    change_column_null :trips, :planner_id, false
  end
end
