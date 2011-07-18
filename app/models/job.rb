class Job < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :program, :presence => true
  validates :file_map, :presence => true
  validates :gui_url, :presence => true
  validates :sensor_map, :presence => true
  validates :sensor_server, :presence => true

end
