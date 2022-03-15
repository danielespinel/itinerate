class CreateAvailableDays < ActiveRecord::Migration[6.0]
  def change
    create_table :available_days do |t|
      t.datetime :day
      t.string :day_name
      t.integer :trip_id

      t.timestamps
    end
  end
end
