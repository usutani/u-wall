require 'test_helper'

class WebClipsControllerTest < ActionController::TestCase
  setup do
    @web_clip = web_clips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_clips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_clip" do
    assert_difference('WebClip.count') do
      post :create, :web_clip => @web_clip.attributes
    end

    assert_redirected_to web_clip_path(assigns(:web_clip))
  end

  test "should show web_clip" do
    get :show, :id => @web_clip.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @web_clip.to_param
    assert_response :success
  end

  test "should update web_clip" do
    put :update, :id => @web_clip.to_param, :web_clip => @web_clip.attributes
    assert_redirected_to web_clip_path(assigns(:web_clip))
  end

  test "should destroy web_clip" do
    assert_difference('WebClip.count', -1) do
      delete :destroy, :id => @web_clip.to_param
    end

    assert_redirected_to web_clips_path
  end
end
