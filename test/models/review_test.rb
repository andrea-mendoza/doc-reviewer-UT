require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  fixtures :reviews

  def setup
    @review = reviews(:one)
    @user = users(:one)
  end

  test "has a  user " do
    assert_equal @user, @review.user
  end


end
