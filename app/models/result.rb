class Result < ActiveRecord::Base
  validates :file_path, :presence => true
  validates :outcome, :presence => true
end
