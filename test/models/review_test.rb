require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  def setup
    @review = reviews(:one)
  end

  test "has relevance " do
    assert_equal @review.relevance , "High"
  end

  test "has problem defined " do
    assert_equal @review.problem_def , "Problem 1"
  end
  # relevance: High
  # problem_def: Problem 1
  # general_def: General 1
  # specific_def: Specific 1
  # confidence: Confidence 1
  # general_evaluation: Good
  # personal_message: Good job
  # paper: one
end
