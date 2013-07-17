require 'test_helper'

class LeaveAccountsControllerTest < ActionController::TestCase
  setup do
    @leave_account = leave_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leave_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leave_account" do
    assert_difference('LeaveAccount.count') do
      post :create, leave_account: { count: @leave_account.count, employee_id: @leave_account.employee_id, leave_type_id: @leave_account.leave_type_id }
    end

    assert_redirected_to leave_account_path(assigns(:leave_account))
  end

  test "should show leave_account" do
    get :show, id: @leave_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leave_account
    assert_response :success
  end

  test "should update leave_account" do
    patch :update, id: @leave_account, leave_account: { count: @leave_account.count, employee_id: @leave_account.employee_id, leave_type_id: @leave_account.leave_type_id }
    assert_redirected_to leave_account_path(assigns(:leave_account))
  end

  test "should destroy leave_account" do
    assert_difference('LeaveAccount.count', -1) do
      delete :destroy, id: @leave_account
    end

    assert_redirected_to leave_accounts_path
  end
end
