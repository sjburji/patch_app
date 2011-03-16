require 'test_helper'

class DataPatchesControllerTest < ActionController::TestCase
  setup do
    @data_patch = data_patches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_patches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_patch" do
    assert_difference('DataPatch.count') do
      post :create, :data_patch => @data_patch.attributes
    end

    assert_redirected_to data_patch_path(assigns(:data_patch))
  end

  test "should show data_patch" do
    get :show, :id => @data_patch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @data_patch.to_param
    assert_response :success
  end

  test "should update data_patch" do
    put :update, :id => @data_patch.to_param, :data_patch => @data_patch.attributes
    assert_redirected_to data_patch_path(assigns(:data_patch))
  end

  test "should destroy data_patch" do
    assert_difference('DataPatch.count', -1) do
      delete :destroy, :id => @data_patch.to_param
    end

    assert_redirected_to data_patches_path
  end
end
