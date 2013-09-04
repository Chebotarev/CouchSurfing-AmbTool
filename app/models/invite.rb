class Invite < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => true
  validates :email, :presence => true
  before_save :check_blacklist

  def check_blacklist
    unless Blacklist.find_by user_id: self.user_id
      unless Blacklist.find_by user_name: self.user_name
        true
      else
        self.errors.add(:user_name, "is blacklisted!")
        false
      end
    else
      unless Blacklist.find_by user_name: self.user_name
        true
      else
        self.errors.add(:user_name, "is blacklisted!")
        false
      end

      self.errors.add(:user_id, "ID is blacklisted!")
      false
    end
  end
  
end
