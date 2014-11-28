require 'test_helper'

class StatusqcsControllerTest < ActionController::TestCase
  setup do
    @statusqc = statusqcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statusqcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statusqc" do
    assert_difference('Statusqc.count') do
      post :create, statusqc: { description: @statusqc.description }
    end

    assert_redirected_to statusqc_path(assigns(:statusqc))
  end

  test "should show statusqc" do
    get :show, id: @statusqc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statusqc
    assert_response :success
  end

  test "should update statusqc" do
    patch :update, id: @statusqc, statusqc: { description: @statusqc.description }
    assert_redirected_to statusqc_path(assigns(:statusqc))
  end

  test "should destroy statusqc" do
    assert_difference('Statusqc.count', -1) do
      delete :destroy, id: @statusqc
    end

    assert_redirected_to statusqcs_path
  end
end
