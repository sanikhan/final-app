require 'test_helper'

class HiresControllerTest < ActionController::TestCase
  setup do
    @hire = hires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hire" do
    assert_difference('Hire.count') do
      post :create, hire: { client_id: @hire.client_id, pk_date: @hire.pk_date, re_date: @hire.re_date, vehicle_id: @hire.vehicle_id }
    end

    assert_redirected_to hire_path(assigns(:hire))
  end

  test "should show hire" do
    get :show, id: @hire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hire
    assert_response :success
  end

  test "should update hire" do
    patch :update, id: @hire, hire: { client_id: @hire.client_id, pk_date: @hire.pk_date, re_date: @hire.re_date, vehicle_id: @hire.vehicle_id }
    assert_redirected_to hire_path(assigns(:hire))
  end

  test "should destroy hire" do
    assert_difference('Hire.count', -1) do
      delete :destroy, id: @hire
    end

    assert_redirected_to hires_path
  end
end
