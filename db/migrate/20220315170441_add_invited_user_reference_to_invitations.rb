class AddInvitedUserReferenceToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :invitations, :users, column: :invited_user_id
    add_index :invitations, :invited_user_id
    change_column_null :invitations, :invited_user_id, false
  end
end
