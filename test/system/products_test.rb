require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Aux Code", with: @product.aux_code
    fill_in "Client Code", with: @product.client_code
    fill_in "Code", with: @product.code
    fill_in "Description", with: @product.description
    fill_in "Dun14", with: @product.dun14
    fill_in "Ean13", with: @product.ean13
    fill_in "Innerpack", with: @product.innerpack
    fill_in "Location", with: @product.location_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Aux Code", with: @product.aux_code
    fill_in "Client Code", with: @product.client_code
    fill_in "Code", with: @product.code
    fill_in "Description", with: @product.description
    fill_in "Dun14", with: @product.dun14
    fill_in "Ean13", with: @product.ean13
    fill_in "Innerpack", with: @product.innerpack
    fill_in "Location", with: @product.location_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
