require 'test_helper'

class ProductPackageElementsControllerTest < ActionController::TestCase
  setup do
    @product_package_element = product_package_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_package_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_package_element" do
    assert_difference('ProductPackageElement.count') do
      post :create, product_package_element: { package_element_id: @product_package_element.package_element_id, product_id: @product_package_element.product_id }
    end

    assert_redirected_to product_package_element_path(assigns(:product_package_element))
  end

  test "should show product_package_element" do
    get :show, id: @product_package_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_package_element
    assert_response :success
  end

  test "should update product_package_element" do
    patch :update, id: @product_package_element, product_package_element: { package_element_id: @product_package_element.package_element_id, product_id: @product_package_element.product_id }
    assert_redirected_to product_package_element_path(assigns(:product_package_element))
  end

  test "should destroy product_package_element" do
    assert_difference('ProductPackageElement.count', -1) do
      delete :destroy, id: @product_package_element
    end

    assert_redirected_to product_package_elements_path
  end
end
