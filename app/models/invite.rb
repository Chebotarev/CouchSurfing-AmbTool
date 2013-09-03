class Invite < ActiveRecord::Base
  validates :user_id, :uniqueness => true
  validates :email, :presence => true

end
