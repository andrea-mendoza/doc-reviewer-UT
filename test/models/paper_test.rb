require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  fixtures :papers

  def setup
    @paper = papers(:one)
  end

  test "belongs an user" do
    assert_equal @paper.user , "juan.pablo@sandoval.com "
  end

  test "has a title" do
    assert_equal @paper.title , "Mi documento"
  end

  test "belongs an event" do
    assert_equal @paper.event , "one"
  end

  test "has a resume" do
    assert_equal @paper.user , "Este es mi primer documento"
  end
  
end
