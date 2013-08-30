class CreateBlacklists < ActiveRecord::Migration
  def change
    create_table :blacklists do |t|
      t.integer :user_id
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
