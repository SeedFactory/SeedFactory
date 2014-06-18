require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post :create, ingredient: { ash: @ingredient.ash, calcium: @ingredient.calcium, cost: @ingredient.cost, cwt: @ingredient.cwt, description: @ingredient.description, fat: @ingredient.fat, fiber: @ingredient.fiber, met_energy: @ingredient.met_energy, niacin: @ingredient.niacin, number: @ingredient.number, panto: @ingredient.panto, phosphorus: @ingredient.phosphorus, protein: @ingredient.protein, riboflavin: @ingredient.riboflavin, vitamin_a: @ingredient.vitamin_a, vitamin_b12: @ingredient.vitamin_b12, vitamin_d3: @ingredient.vitamin_d3, vitamin_e: @ingredient.vitamin_e, vitamin_k: @ingredient.vitamin_k }
    end

    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should show ingredient" do
    get :show, id: @ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient
    assert_response :success
  end

  test "should update ingredient" do
    patch :update, id: @ingredient, ingredient: { ash: @ingredient.ash, calcium: @ingredient.calcium, cost: @ingredient.cost, cwt: @ingredient.cwt, description: @ingredient.description, fat: @ingredient.fat, fiber: @ingredient.fiber, met_energy: @ingredient.met_energy, niacin: @ingredient.niacin, number: @ingredient.number, panto: @ingredient.panto, phosphorus: @ingredient.phosphorus, protein: @ingredient.protein, riboflavin: @ingredient.riboflavin, vitamin_a: @ingredient.vitamin_a, vitamin_b12: @ingredient.vitamin_b12, vitamin_d3: @ingredient.vitamin_d3, vitamin_e: @ingredient.vitamin_e, vitamin_k: @ingredient.vitamin_k }
    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete :destroy, id: @ingredient
    end

    assert_redirected_to ingredients_path
  end
end
