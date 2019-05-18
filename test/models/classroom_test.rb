require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  fixtures :classrooms

  def setup
    @classroom = classrooms(:one)
    @paper = papers(:one)
  end

  test "enter an ambient" do
    assert_equal @classroom.ambient , "AP-2"
  end

  test "choose a date" do
    assert_equal @classroom.defense_date , "26 Abr, 2019"
  end

  test "choose a hour" do
    assert_equal @classroom.defense_hour , "03:30 PM"
  end

  test "belongs an paper" do
    assert_equal @paper.paper , @paper
  end

end
