class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :user_id
      t.string :user_name
      t.string :email
      t.string :answer

      t.timestamps
    end
  end
end
