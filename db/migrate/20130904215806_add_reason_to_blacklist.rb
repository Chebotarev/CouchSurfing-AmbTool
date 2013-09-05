class AddReasonToBlacklist < ActiveRecord::Migration
  def change
    add_column :blacklists, :reason, :text
  end
end
