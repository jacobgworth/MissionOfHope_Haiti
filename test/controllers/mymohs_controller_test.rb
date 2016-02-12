require 'test_helper'

class MymohsControllerTest < ActionController::TestCase
  setup do
    @mymoh = mymohs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mymohs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mymoh" do
    assert_difference('Mymoh.count') do
      post :create, mymoh: {  }
    end

    assert_redirected_to mymoh_path(assigns(:mymoh))
  end

  test "should show mymoh" do
    get :show, id: @mymoh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mymoh
    assert_response :success
  end

  test "should update mymoh" do
    patch :update, id: @mymoh, mymoh: {  }
    assert_redirected_to mymoh_path(assigns(:mymoh))
  end

  test "should destroy mymoh" do
    assert_difference('Mymoh.count', -1) do
      delete :destroy, id: @mymoh
    end

    assert_redirected_to mymohs_path
  end
end
