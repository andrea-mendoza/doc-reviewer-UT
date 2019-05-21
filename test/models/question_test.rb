require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions

  def setup
    @question = questions(:one)
    @question1 = questions(:two)

  end

  test "has a  description " do
    assert_equal "First question", @question.description
  end

  test "has a maximum score   " do
    assert_equal 2, @question.max_score
  end

  test "display type  not selected" do
    assert_equal "Type not set", @question1.display_type
  end

  test "display type  selected text" do
    assert_equal "Texto", @question.display_type
  end

  test "is quantitative  " do
    assert_equal 2, @question1.is_quantitative? 
  end

  test "is not  quantitative " do
    assert_equal false, @question.is_quantitative? 
  end


end
