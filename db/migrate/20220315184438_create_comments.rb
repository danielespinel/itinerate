class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :commenter_id
      t.text :comment
      t.integer :activity_id

      t.timestamps
    end
  end
end
