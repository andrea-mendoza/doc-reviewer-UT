require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  fixtures :reviews

  def setup
    @review = reviews(:one)
    @user = users(:one)
    @question = questions(:one)
  end

  test "has a  user " do
    assert_equal @user, @review.user
  end

  test "final score initial should be 0 " do
    assert_equal 0, @review.final_score
  end


end
