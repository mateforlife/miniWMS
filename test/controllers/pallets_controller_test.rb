require 'test_helper'

class PalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pallet = pallets(:one)
  end

  test "should get index" do
    get pallets_url
    assert_response :success
  end

  test "should get new" do
    get new_pallet_url
    assert_response :success
  end

  test "should create pallet" do
    assert_difference('Pallet.count') do
      post pallets_url, params: { pallet: { available_qty: @pallet.available_qty, batch: @pallet.batch, exp_date: @pallet.exp_date, location_id: @pallet.location_id, origin_qty: @pallet.origin_qty, pallet_number: @pallet.pallet_number, reception_id: @pallet.reception_id, reserved_qty: @pallet.reserved_qty, status: @pallet.status } }
    end

    assert_redirected_to pallet_url(Pallet.last)
  end

  test "should show pallet" do
    get pallet_url(@pallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pallet_url(@pallet)
    assert_response :success
  end

  test "should update pallet" do
    patch pallet_url(@pallet), params: { pallet: { available_qty: @pallet.available_qty, batch: @pallet.batch, exp_date: @pallet.exp_date, location_id: @pallet.location_id, origin_qty: @pallet.origin_qty, pallet_number: @pallet.pallet_number, reception_id: @pallet.reception_id, reserved_qty: @pallet.reserved_qty, status: @pallet.status } }
    assert_redirected_to pallet_url(@pallet)
  end

  test "should destroy pallet" do
    assert_difference('Pallet.count', -1) do
      delete pallet_url(@pallet)
    end

    assert_redirected_to pallets_url
  end
end
