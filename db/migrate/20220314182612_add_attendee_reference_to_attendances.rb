class AddAttendeeReferenceToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :attendances, :users, column: :attendee_id
    add_index :attendances, :attendee_id
    change_column_null :attendances, :attendee_id, false
  end
end
