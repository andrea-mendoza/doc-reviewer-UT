require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  fixtures :reviews

  def setup
    @review = reviews(:one)
    @paper = papers(:one)
  end

  # test "has relevance " do
  #   assert_equal @review.relevance , "High"
  # end

  # test "has a problem " do
  #   assert_equal @review.problem_def , "Problem 1"
  # end

  # test "has a general definition " do
  #   assert_equal @review.general_def , "General 1"
  # end

  # test "has a specific definition " do
  #   assert_equal @review.specific_def , "Specific 1"
  # end

  # test "has a  confidence " do
  #   assert_equal @review.confidence , "Confidence 1"
  # end
 
  # test "has a  general evaluation " do
  #   assert_equal @review.general_evaluation , "Good"
  # end

  # test "has a  personal message" do
  #   assert_equal @review.personal_message , "Good job"
  # end

  test "has a  paper " do
    assert_equal @review.paper , @paper
  end


  # paper: one
end
