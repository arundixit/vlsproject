require 'test_helper'

class PayslipreportsControllerTest < ActionController::TestCase
  setup do
    @payslipreport = payslipreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payslipreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payslipreport" do
    assert_difference('Payslipreport.count') do
      post :create, payslipreport: {  }
    end

    assert_redirected_to payslipreport_path(assigns(:payslipreport))
  end

  test "should show payslipreport" do
    get :show, id: @payslipreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payslipreport
    assert_response :success
  end

  test "should update payslipreport" do
    patch :update, id: @payslipreport, payslipreport: {  }
    assert_redirected_to payslipreport_path(assigns(:payslipreport))
  end

  test "should destroy payslipreport" do
    assert_difference('Payslipreport.count', -1) do
      delete :destroy, id: @payslipreport
    end

    assert_redirected_to payslipreports_path
  end
end
