# == Schema Information
#
# Table name: job_machines
#
#  id         :integer         not null, primary key
#  job_id     :integer         not null
#  node_id    :integer         not null
#  created_at :datetime
#  updated_at :datetime
#

class JobMachine < ActiveRecord::Base
  
end
