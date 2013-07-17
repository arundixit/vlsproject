require 'test_helper'

class AttendenceStatusesControllerTest < ActionController::TestCase
  setup do
    @attendence_status = attendence_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendence_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendence_status" do
    assert_difference('AttendenceStatus.count') do
      post :create, attendence_status: { name: @attendence_status.name }
    end

    assert_redirected_to attendence_status_path(assigns(:attendence_status))
  end

  test "should show attendence_status" do
    get :show, id: @attendence_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendence_status
    assert_response :success
  end

  test "should update attendence_status" do
    patch :update, id: @attendence_status, attendence_status: { name: @attendence_status.name }
    assert_redirected_to attendence_status_path(assigns(:attendence_status))
  end

  test "should destroy attendence_status" do
    assert_difference('AttendenceStatus.count', -1) do
      delete :destroy, id: @attendence_status
    end

    assert_redirected_to attendence_statuses_path
  end
end
