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

  test 'valid name' do
    assert @survey.valid?
  end

  test "safe to remove" do
    assert @survey.safe_to_remove?
  end

end


