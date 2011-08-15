# == Schema Information
#
# Table name: resources
#
#  id                :integer         not null, primary key
#  predefined        :boolean
#  name              :string(255)     not null
#  description       :text
#  cpus              :integer         not null
#  memory            :integer         not null
#  disk              :integer         not null
#  network           :float           not null
#  created_at        :datetime
#  updated_at        :datetime
#

class Resource < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :cpus, :presence => true
  validates :memory, :presence => true
  validates :disk, :presence => true
  validates :network, :presence => true
end
