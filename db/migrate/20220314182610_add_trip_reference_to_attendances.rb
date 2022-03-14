class AddTripReferenceToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :attendances, :trips
    add_index :attendances, :trip_id
    change_column_null :attendances, :trip_id, false
  end
end
