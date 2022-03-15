class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :invited_user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
