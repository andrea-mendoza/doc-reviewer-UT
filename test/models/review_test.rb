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

  test "final score   " do
    assert_equal 1.5, @review.final_score
  end

  test "build evaluation  " do
    
    assert_equal @review.build_evaluation(@question), @review.final_score
  end

end
