require "application_system_test_case"

class ReceptionPalletsTest < ApplicationSystemTestCase
  setup do
    @reception_pallet = reception_pallets(:one)
  end

  test "visiting the index" do
    visit reception_pallets_url
    assert_selector "h1", text: "Reception Pallets"
  end

  test "creating a Reception pallet" do
    visit reception_pallets_url
    click_on "New Reception Pallet"

    fill_in "Pallet", with: @reception_pallet.pallet_id
    fill_in "Reception", with: @reception_pallet.reception_id
    click_on "Create Reception pallet"

    assert_text "Reception pallet was successfully created"
    click_on "Back"
  end

  test "updating a Reception pallet" do
    visit reception_pallets_url
    click_on "Edit", match: :first

    fill_in "Pallet", with: @reception_pallet.pallet_id
    fill_in "Reception", with: @reception_pallet.reception_id
    click_on "Update Reception pallet"

    assert_text "Reception pallet was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception pallet" do
    visit reception_pallets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception pallet was successfully destroyed"
  end
end
