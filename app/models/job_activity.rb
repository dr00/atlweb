# == Schema Information
#
# Table name: job_activities
#
#  id          :integer         not null, primary key
#  outcome     :string(255)     default("never run")
#  machines    :string(255)     default("n/a")
#  job_guid    :string(255)     default("none")
#  user_id     :integer
#  job_id      :integer
#  resource_id :integer
#  result_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class JobActivity < ActiveRecord::Base

end
