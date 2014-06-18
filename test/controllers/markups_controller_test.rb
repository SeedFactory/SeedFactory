require 'test_helper'

class MarkupsControllerTest < ActionController::TestCase
  setup do
    @markup = markups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create markup" do
    assert_difference('Markup.count') do
      post :create, markup: { dealer: @markup.dealer, description: @markup.description, distributor: @markup.distributor, jobber: @markup.jobber, online: @markup.online, retail: @markup.retail, wholesale: @markup.wholesale }
    end

    assert_redirected_to markup_path(assigns(:markup))
  end

  test "should show markup" do
    get :show, id: @markup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @markup
    assert_response :success
  end

  test "should update markup" do
    patch :update, id: @markup, markup: { dealer: @markup.dealer, description: @markup.description, distributor: @markup.distributor, jobber: @markup.jobber, online: @markup.online, retail: @markup.retail, wholesale: @markup.wholesale }
    assert_redirected_to markup_path(assigns(:markup))
  end

  test "should destroy markup" do
    assert_difference('Markup.count', -1) do
      delete :destroy, id: @markup
    end

    assert_redirected_to markups_path
  end
end
