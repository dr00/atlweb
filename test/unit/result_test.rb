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

require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
