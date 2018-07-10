require 'test_helper'

class PalletLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pallet_location = pallet_locations(:one)
  end

  test "should get index" do
    get pallet_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_pallet_location_url
    assert_response :success
  end

  test "should create pallet_location" do
    assert_difference('PalletLocation.count') do
      post pallet_locations_url, params: { pallet_location: { location_id: @pallet_location.location_id, pallet_id: @pallet_location.pallet_id } }
    end

    assert_redirected_to pallet_location_url(PalletLocation.last)
  end

  test "should show pallet_location" do
    get pallet_location_url(@pallet_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_pallet_location_url(@pallet_location)
    assert_response :success
  end

  test "should update pallet_location" do
    patch pallet_location_url(@pallet_location), params: { pallet_location: { location_id: @pallet_location.location_id, pallet_id: @pallet_location.pallet_id } }
    assert_redirected_to pallet_location_url(@pallet_location)
  end

  test "should destroy pallet_location" do
    assert_difference('PalletLocation.count', -1) do
      delete pallet_location_url(@pallet_location)
    end

    assert_redirected_to pallet_locations_url
  end
end
