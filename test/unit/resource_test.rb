# == Schema Information
#
# Table name: resources
#
#  id            :integer         not null, primary key
#  name          :string(255)     not null
#  description   :text
#  num_CPUs      :integer         not null
#  memory_req    :integer         not null
#  diskspace_req :integer         not null
#  bandwidth_req :integer         not null
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
