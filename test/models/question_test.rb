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

  test "is quantitative " do
    assert_equal 2, @question.is_quantitative? 
  end

  test "display type " do
    assert_equal "Quantitative", @question.display_type
  end

  test "self default type " do
    assert_equal "Quantitative", @question.self.display_type
  end

end
