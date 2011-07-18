class Resource < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :num_CPUs, :presence => true
  validates :memory_req, :presence => true
  validates :diskspace_req, :presence => true
  validates :bandwidth_req, :presence => true
end
