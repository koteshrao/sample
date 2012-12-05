require 'test_helper'

class KotisControllerTest < ActionController::TestCase
  setup do
    @koti = kotis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kotis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koti" do
    assert_difference('Koti.count') do
      post :create, koti: { course: @koti.course, place: @koti.place }
    end

    assert_redirected_to koti_path(assigns(:koti))
  end

  test "should show koti" do
    get :show, id: @koti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @koti
    assert_response :success
  end

  test "should update koti" do
    put :update, id: @koti, koti: { course: @koti.course, place: @koti.place }
    assert_redirected_to koti_path(assigns(:koti))
  end

  test "should destroy koti" do
    assert_difference('Koti.count', -1) do
      delete :destroy, id: @koti
    end

    assert_redirected_to kotis_path
  end
end
