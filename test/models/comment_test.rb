require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    fixtures :comments

  def setup
    @comment = comments(:one)
  end

  test 'valid comment' do
    assert @comment.valid?
  end

  test "enter an commentary" do
    assert_equal @comment.commentary , "MyText"
  end
end
