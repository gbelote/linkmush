require 'test_helper'

class EmbedsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:embeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create embed" do
    assert_difference('Embed.count') do
      post :create, :embed => { }
    end

    assert_redirected_to embed_path(assigns(:embed))
  end

  test "should show embed" do
    get :show, :id => embeds(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => embeds(:one).to_param
    assert_response :success
  end

  test "should update embed" do
    put :update, :id => embeds(:one).to_param, :embed => { }
    assert_redirected_to embed_path(assigns(:embed))
  end

  test "should destroy embed" do
    assert_difference('Embed.count', -1) do
      delete :destroy, :id => embeds(:one).to_param
    end

    assert_redirected_to embeds_path
  end
end
