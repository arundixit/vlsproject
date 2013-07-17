require 'test_helper'

class AttendencesControllerTest < ActionController::TestCase
  setup do
    @attendence = attendences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendence" do
    assert_difference('Attendence.count') do
      post :create, attendence: { attendence_status_id: @attendence.attendence_status_id, date_time: @attendence.date_time, employee_id: @attendence.employee_id, user_id: @attendence.user_id }
    end

    assert_redirected_to attendence_path(assigns(:attendence))
  end

  test "should show attendence" do
    get :show, id: @attendence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendence
    assert_response :success
  end

  test "should update attendence" do
    patch :update, id: @attendence, attendence: { attendence_status_id: @attendence.attendence_status_id, date_time: @attendence.date_time, employee_id: @attendence.employee_id, user_id: @attendence.user_id }
    assert_redirected_to attendence_path(assigns(:attendence))
  end

  test "should destroy attendence" do
    assert_difference('Attendence.count', -1) do
      delete :destroy, id: @attendence
    end

    assert_redirected_to attendences_path
  end
end
