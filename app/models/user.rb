class User < ActiveRecord::Base
  
  validates :user_name, :presence => true, :uniqueness => true
  validates :last_name, :presence => true
  validates :first_nane, :presence => true
end
