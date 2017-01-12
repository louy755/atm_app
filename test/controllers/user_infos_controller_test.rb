require 'test_helper'

class UserInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_info = user_infos(:one)
  end

  test "should get index" do
    get user_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_user_info_url
    assert_response :success
  end

  test "should create user_info" do
    assert_difference('UserInfo.count') do
      post user_infos_url, params: { user_info: { address: @user_info.address, city: @user_info.city, firstname: @user_info.firstname, image: @user_info.image, lastname: @user_info.lastname, phone: @user_info.phone, postel_code: @user_info.postel_code, state: @user_info.state, user_id: @user_info.user_id } }
    end

    assert_redirected_to user_info_url(UserInfo.last)
  end

  test "should show user_info" do
    get user_info_url(@user_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_info_url(@user_info)
    assert_response :success
  end

  test "should update user_info" do
    patch user_info_url(@user_info), params: { user_info: { address: @user_info.address, city: @user_info.city, firstname: @user_info.firstname, image: @user_info.image, lastname: @user_info.lastname, phone: @user_info.phone, postel_code: @user_info.postel_code, state: @user_info.state, user_id: @user_info.user_id } }
    assert_redirected_to user_info_url(@user_info)
  end

  test "should destroy user_info" do
    assert_difference('UserInfo.count', -1) do
      delete user_info_url(@user_info)
    end

    assert_redirected_to user_infos_url
  end
end
