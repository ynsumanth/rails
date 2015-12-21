require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @student = Student.find(1)
    @course = Course.find(1)
    @micropost = Micropost.new(student_id: @student.id, course_id: @course.id)
  end
  
  test "student is found" do
    assert_not @student.nil?
  end
  
  test "should be valid" do
    assert @micropost.valid?
  end
  
  test "student id should not be valid" do
    @micropost.student_id = nil
    assert_not @micropost.valid?
  end
  
end
