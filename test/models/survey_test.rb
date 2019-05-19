require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  fixtures :surveys

  def setup
    @survey = surveys(:one) 
end

test "enter an name" do
  assert_equal @survey.name , "MyName"
end

test "enter an questions_attributes" do
  assert_equal @survey.questions_attributes , {1,"my document","trabajo practico","monografia"}
end

end
