# == Schema Information
#
# Table name: resources
#
#  id            :integer         not null, primary key
#  name          :string(255)     not null
#  description   :text
#  num_CPUs      :integer         not null
#  memory_req    :integer         not null
#  diskspace_req :integer         not null
#  bandwidth_req :integer         not null
#  created_at    :datetime
#  updated_at    :datetime
#

class Resource < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :num_CPUs, :presence => true
  validates :memory_req, :presence => true
  validates :diskspace_req, :presence => true
  validates :bandwidth_req, :presence => true
end
