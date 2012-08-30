require 'test_helper'

class CategoryGaleriesControllerTest < ActionController::TestCase
  setup do
    @category_galery = category_galeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_galeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_galery" do
    assert_difference('CategoryGalery.count') do
      post :create, category_galery: { name: @category_galery.name }
    end

    assert_redirected_to category_galery_path(assigns(:category_galery))
  end

  test "should show category_galery" do
    get :show, id: @category_galery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_galery
    assert_response :success
  end

  test "should update category_galery" do
    put :update, id: @category_galery, category_galery: { name: @category_galery.name }
    assert_redirected_to category_galery_path(assigns(:category_galery))
  end

  test "should destroy category_galery" do
    assert_difference('CategoryGalery.count', -1) do
      delete :destroy, id: @category_galery
    end

    assert_redirected_to category_galeries_path
  end
end
