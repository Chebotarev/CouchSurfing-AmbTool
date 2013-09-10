class AddIsInvitedToBlacklist < ActiveRecord::Migration
  def change
    add_column :blacklists, :is_invited, :boolean
  end
end
