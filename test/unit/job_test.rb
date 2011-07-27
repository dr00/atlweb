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
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
