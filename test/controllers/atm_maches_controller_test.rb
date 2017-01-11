require 'test_helper'

class AtmMachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm_mach = atm_maches(:one)
  end

  test "should get index" do
    get atm_maches_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_mach_url
    assert_response :success
  end

  test "should create atm_mach" do
    assert_difference('AtmMach.count') do
      post atm_maches_url, params: { atm_mach: { address: @atm_mach.address, latitude: @atm_mach.latitude, longitude: @atm_mach.longitude, name: @atm_mach.name } }
    end

    assert_redirected_to atm_mach_url(AtmMach.last)
  end

  test "should show atm_mach" do
    get atm_mach_url(@atm_mach)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_mach_url(@atm_mach)
    assert_response :success
  end

  test "should update atm_mach" do
    patch atm_mach_url(@atm_mach), params: { atm_mach: { address: @atm_mach.address, latitude: @atm_mach.latitude, longitude: @atm_mach.longitude, name: @atm_mach.name } }
    assert_redirected_to atm_mach_url(@atm_mach)
  end

  test "should destroy atm_mach" do
    assert_difference('AtmMach.count', -1) do
      delete atm_mach_url(@atm_mach)
    end

    assert_redirected_to atm_maches_url
  end
end
