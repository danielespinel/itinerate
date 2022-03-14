class AddTripReferenceToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :invitations, :trips
    add_index :invitations, :trip_id
    change_column_null :invitations, :trip_id, false
  end
end
