class Node < ActiveRecord::Base
  validates :ipaddress, :presence => true
  validates :name, :presence => true, :uniqueness => true
end
