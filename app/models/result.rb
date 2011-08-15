# == Schema Information
#
# Table name: results
#
#  id          :integer         not null, primary key
#  file_path   :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Result < ActiveRecord::Base
  validates :file_path, :presence => true
  validates :outcome, :presence => true
end
