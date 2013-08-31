require 'test_helper'

class FoodstuffsControllerTest < ActionController::TestCase
  setup do
    @foodstuff = foodstuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodstuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodstuff" do
    assert_difference('Foodstuff.count') do
      post :create, foodstuff: { amount: @foodstuff.amount, food_id: @foodstuff.food_id, menu_id: @foodstuff.menu_id }
    end

    assert_redirected_to foodstuff_path(assigns(:foodstuff))
  end

  test "should show foodstuff" do
    get :show, id: @foodstuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodstuff
    assert_response :success
  end

  test "should update foodstuff" do
    patch :update, id: @foodstuff, foodstuff: { amount: @foodstuff.amount, food_id: @foodstuff.food_id, menu_id: @foodstuff.menu_id }
    assert_redirected_to foodstuff_path(assigns(:foodstuff))
  end

  test "should destroy foodstuff" do
    assert_difference('Foodstuff.count', -1) do
      delete :destroy, id: @foodstuff
    end

    assert_redirected_to foodstuffs_path
  end
end
