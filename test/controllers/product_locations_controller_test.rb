require 'test_helper'

class ProductLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_location = product_locations(:one)
  end

  test "should get index" do
    get product_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_product_location_url
    assert_response :success
  end

  test "should create product_location" do
    assert_difference('ProductLocation.count') do
      post product_locations_url, params: { product_location: { location_id: @product_location.location_id, product_id: @product_location.product_id } }
    end

    assert_redirected_to product_location_url(ProductLocation.last)
  end

  test "should show product_location" do
    get product_location_url(@product_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_location_url(@product_location)
    assert_response :success
  end

  test "should update product_location" do
    patch product_location_url(@product_location), params: { product_location: { location_id: @product_location.location_id, product_id: @product_location.product_id } }
    assert_redirected_to product_location_url(@product_location)
  end

  test "should destroy product_location" do
    assert_difference('ProductLocation.count', -1) do
      delete product_location_url(@product_location)
    end

    assert_redirected_to product_locations_url
  end
end
