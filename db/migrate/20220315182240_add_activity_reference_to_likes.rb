class AddActivityReferenceToLikes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :likes, :activities
    add_index :likes, :activity_id
    change_column_null :likes, :activity_id, false
  end
end
