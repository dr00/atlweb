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

require 'spec_helper'

describe Machine do
  pending "add some examples to (or delete) #{__FILE__}"
end
