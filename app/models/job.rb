# == Schema Information
#
# Table name: jobs
#
#  id            :integer         not null, primary key
#  name          :string(255)     not null
#  description   :text
#  sensor_server :string(255)     default("hercules")
#  gui_url       :string(255)     default("www.dslab.uwb.edu")
#  sensor_map    :string(255)
#  result_id     :integer
#  user_id       :integer
#  last_run_date :datetime
#  program       :string(255)     not null
#  args          :string(255)
#  file_map      :string(255)
#  last_outcome  :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Job < ActiveRecord::Base
  attr_accessible :name, :description, :sensor_server, :gui_url, :sensor_map, :program, :args, :file_map

  belongs_to :user

  validates :name, :presence => true, :uniqueness => true
  validates :program, :presence => true
  validates :file_map, :presence => true
  validates :gui_url, :presence => true
  validates :sensor_map, :presence => true
  validates :sensor_server, :presence => true

  default_scope :order => 'job.last_run_at DESC'

end
