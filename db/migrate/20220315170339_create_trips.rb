class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :name
      t.string :image
      t.integer :planner_id

      t.timestamps
    end
  end
end
