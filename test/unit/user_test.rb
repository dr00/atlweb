# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  user_name     :string(255)     not null
#  first_name    :string(255)     not null
#  last_name     :string(255)     not null
#  email         :string(255)     not null
#  admin         :boolean         default(FALSE), not null
#  password_hash :string(255)
#  password_salt :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
