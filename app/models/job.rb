# == Schema Information
#
# Table name: jobs
#
#  id               :integer         not null, primary key
#  name             :string(255)     not null
#  description      :text
#  command          :string(255)     not null
#  args             :string(255)
#  program_path :string(255)     not null
#  filemap          :string(255)
#  last_outcome     :string(255)
#  sensor_server    :string(255)     default("hercules")
#  gui_url          :string(255)     default("www.dslab.uwb.edu")
#  sensor_map_path  :string(255)     not null
#  user_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Job < ActiveRecord::Base
  before_save :update_program_path
  attr_accessible :name, :description, :command, :args, :program_path, :file_map, :sensor_server, :sensor_map, :gui_url

  belongs_to :user

  validates :name, :presence => true, :uniqueness => true
  validates :command, :presence => true
  validates :file_map, :presence => true
	validates :program_path, :presence => true
  validates :gui_url, :presence => true
  validates :sensor_map, :presence => true
  validates :sensor_server, :presence => true

  default_scope :order => 'jobs.name'

  private

  def update_program_path
    filename = File.basename(program_path)
    user = User.find_by_id(params[:user_id])
    self[:program_path] = "#{user.home_dir}/#{id}/#{filename}"
  end
end
