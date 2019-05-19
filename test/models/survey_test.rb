require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  fixtures :surveys

  def setup
    @survey = surveys(:one)
    @question = questions(:one) 
  end

  test "enter an name" do
    assert_equal @survey.name , "FirstProfileRevision"
  end

  test "select quantitative questions" do
    assert_equal @survey.quantitative_questions(), [@question]
  end

end


