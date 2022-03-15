class AddTripReferenceToAvailableDays < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :available_days, :trips
    add_index :available_days, :trip_id
    change_column_null :available_days, :trip_id, false
  end
end
