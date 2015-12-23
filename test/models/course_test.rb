require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "course is created" do
     @course = Course.new
     @course.courseDescription="test course"
     @course.feildId="1"
     
     assert @course.valid?
   end
   
   test "course is valid" do
     @course = Course.new
     @course.courseDescription="test course"
     
     assert @course.valid?
   end
end
