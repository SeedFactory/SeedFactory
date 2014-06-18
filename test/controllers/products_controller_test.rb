require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brand_id: @product.brand_id, catalog_page: @product.catalog_page, category_id: @product.category_id, code: @product.code, code_prefix: @product.code_prefix, code_suffix: @product.code_suffix, description: @product.description, gaylord: @product.gaylord, item_class_id: @product.item_class_id, items_per_case: @product.items_per_case, markup_id: @product.markup_id, name: @product.name, pallet_bag_count: @product.pallet_bag_count, pallet_case_count: @product.pallet_case_count, pallet_size: @product.pallet_size, pallet_weight: @product.pallet_weight, production_line: @product.production_line, screen_size_bottom: @product.screen_size_bottom, screen_size_top: @product.screen_size_top, type_id: @product.type_id, upc: @product.upc, weight: @product.weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { brand_id: @product.brand_id, catalog_page: @product.catalog_page, category_id: @product.category_id, code: @product.code, code_prefix: @product.code_prefix, code_suffix: @product.code_suffix, description: @product.description, gaylord: @product.gaylord, item_class_id: @product.item_class_id, items_per_case: @product.items_per_case, markup_id: @product.markup_id, name: @product.name, pallet_bag_count: @product.pallet_bag_count, pallet_case_count: @product.pallet_case_count, pallet_size: @product.pallet_size, pallet_weight: @product.pallet_weight, production_line: @product.production_line, screen_size_bottom: @product.screen_size_bottom, screen_size_top: @product.screen_size_top, type_id: @product.type_id, upc: @product.upc, weight: @product.weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
