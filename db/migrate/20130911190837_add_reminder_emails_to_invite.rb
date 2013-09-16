class AddReminderEmailsToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :reminders, :integer, :default => 0
  end
end
