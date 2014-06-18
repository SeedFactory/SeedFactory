require 'test_helper'

class PackageElementsControllerTest < ActionController::TestCase
  setup do
    @package_element = package_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_element" do
    assert_difference('PackageElement.count') do
      post :create, package_element: { cost: @package_element.cost, name: @package_element.name, number: @package_element.number, package_element_type_id: @package_element.package_element_type_id, size: @package_element.size }
    end

    assert_redirected_to package_element_path(assigns(:package_element))
  end

  test "should show package_element" do
    get :show, id: @package_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_element
    assert_response :success
  end

  test "should update package_element" do
    patch :update, id: @package_element, package_element: { cost: @package_element.cost, name: @package_element.name, number: @package_element.number, package_element_type_id: @package_element.package_element_type_id, size: @package_element.size }
    assert_redirected_to package_element_path(assigns(:package_element))
  end

  test "should destroy package_element" do
    assert_difference('PackageElement.count', -1) do
      delete :destroy, id: @package_element
    end

    assert_redirected_to package_elements_path
  end
end
