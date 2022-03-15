class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :trip_id
      t.string :name
      t.date :day
      t.string :time_of_day
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
