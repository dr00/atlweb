# == Schema Information
#
# Table name: results
#
#  id          :integer         not null, primary key
#  file_path   :string(255)
#  description :text
#  outcome     :string(255)     not null
#  job_id      :integer         not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Result < ActiveRecord::Base
  validates :file_path, :presence => true
  validates :outcome, :presence => true
end
