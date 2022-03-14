class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :trip_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
