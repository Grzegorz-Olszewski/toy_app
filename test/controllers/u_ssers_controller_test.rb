require 'test_helper'

class USsersControllerTest < ActionController::TestCase
  setup do
    @u_sser = u_ssers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_ssers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_sser" do
    assert_difference('USser.count') do
      post :create, u_sser: { email: @u_sser.email, name: @u_sser.name }
    end

    assert_redirected_to u_sser_path(assigns(:u_sser))
  end

  test "should show u_sser" do
    get :show, id: @u_sser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @u_sser
    assert_response :success
  end

  test "should update u_sser" do
    patch :update, id: @u_sser, u_sser: { email: @u_sser.email, name: @u_sser.name }
    assert_redirected_to u_sser_path(assigns(:u_sser))
  end

  test "should destroy u_sser" do
    assert_difference('USser.count', -1) do
      delete :destroy, id: @u_sser
    end

    assert_redirected_to u_ssers_path
  end
end
