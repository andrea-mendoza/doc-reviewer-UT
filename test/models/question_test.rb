require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions

  def setup
    @question = questions(:one)
  end

  test "has a  description " do
    assert_equal "First question", @question.description
  end

  test "has a maximum score   " do
    assert_equal 2, @question.max_score
  end

  test "display type " do
    assert_equal "Type not set", @question.display_type
  end

  test "is quantitative " do
    assert_equal 2, @question.is_quantitative? 
  end

  

  test "default type " do
    assert_equal "Quantitative", @question.default_type
  end

end
