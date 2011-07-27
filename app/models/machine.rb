# == Schema Information
#
# Table name: machines
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  ipaddress  :string(255)
#  status     :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Machine < ActiveRecord::Base
end
