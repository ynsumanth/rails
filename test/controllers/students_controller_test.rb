require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
   
      post :create, student: { emailId: @student.emailId, firstName: @student.firstName, lastName: @student.lastName, mailingAddress: @student.mailingAddress, middleName: @student.middleName, mobileNo: @student.mobileNo, permanentAddress: @student.permanentAddress, id: @student.id }
   

    assert_response :success
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should update student" do
    #@student = students(:three);
    patch :update, id: @student, student: { emailId: "tst@oracle.com", firstName: @student.firstName, lastName: @student.lastName, mailingAddress: @student.mailingAddress, middleName: @student.middleName, mobileNo: @student.mobileNo, permanentAddress: @student.permanentAddress, studentId: @student.id }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    #@student = students(:two);
    delete :destroy, id: @student
    assert_redirected_to students_path
  end
end
