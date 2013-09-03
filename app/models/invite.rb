class Invite < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => true
  validates :email, :presence => true

end
