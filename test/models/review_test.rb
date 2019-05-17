require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  fixtures :reviews

  def setup
    @review = reviews(:one)
    @paper = papers(:one)
  end

  test "has a  paper " do
    assert_equal @review.paper , "one"
  end


end
