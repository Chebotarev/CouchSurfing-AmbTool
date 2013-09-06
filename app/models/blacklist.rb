class Blacklist < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => true
  validates :user_name, :presence => true
  before_save :already_invited?

  def already_invited?
    unless Invite.find_by user_id: self.user_id
      
      unless Invite.find_by user_name: self.user_name
        true
      else
        false 
      end

    else
      false
    end
  end
  
end
