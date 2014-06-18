require 'test_helper'

class PackageElementTypesControllerTest < ActionController::TestCase
  setup do
    @package_element_type = package_element_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_element_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_element_type" do
    assert_difference('PackageElementType.count') do
      post :create, package_element_type: { name: @package_element_type.name }
    end

    assert_redirected_to package_element_type_path(assigns(:package_element_type))
  end

  test "should show package_element_type" do
    get :show, id: @package_element_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_element_type
    assert_response :success
  end

  test "should update package_element_type" do
    patch :update, id: @package_element_type, package_element_type: { name: @package_element_type.name }
    assert_redirected_to package_element_type_path(assigns(:package_element_type))
  end

  test "should destroy package_element_type" do
    assert_difference('PackageElementType.count', -1) do
      delete :destroy, id: @package_element_type
    end

    assert_redirected_to package_element_types_path
  end
end
