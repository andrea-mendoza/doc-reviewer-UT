require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def setup
    @user = users(:one)
  end

  test "Complete name" do
    assert_equal "juan pablo ", @user.complete_name
  end

end
