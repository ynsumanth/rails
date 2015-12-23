require 'test_helper'

class FeildsControllerTest < ActionController::TestCase
  setup do
    @feild = feilds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feilds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feild" do
    assert_difference('Feild.count') do
      post :create, feild: { feildId: @feild.id, feildName: @feild.feildName, departmentId: "1" }
    end

    assert_redirected_to feild_path(assigns(:feild))
  end

  test "should show feild" do
    get :show, id: @feild
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feild
    assert_response :success
  end

  test "should update feild" do
    patch :update, id: @feild, feild: { feildId: @feild.id, feildName: @feild.feildName }
    assert_redirected_to feild_path(assigns(:feild))
  end

  test "should destroy feild" do
    assert_difference('Feild.count', -1) do
      delete :destroy, id: @feild
    end

    assert_redirected_to feilds_path
  end
end
