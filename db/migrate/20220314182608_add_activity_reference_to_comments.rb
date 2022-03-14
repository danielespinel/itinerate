class AddActivityReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :activities
    add_index :comments, :activity_id
    change_column_null :comments, :activity_id, false
  end
end
