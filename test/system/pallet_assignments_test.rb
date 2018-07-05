require "application_system_test_case"

class PalletAssignmentsTest < ApplicationSystemTestCase
  setup do
    @pallet_assignment = pallet_assignments(:one)
  end

  test "visiting the index" do
    visit pallet_assignments_url
    assert_selector "h1", text: "Pallet Assignments"
  end

  test "creating a Pallet assignment" do
    visit pallet_assignments_url
    click_on "New Pallet Assignment"

    fill_in "Location", with: @pallet_assignment.location_id
    fill_in "Pallet", with: @pallet_assignment.pallet_id
    click_on "Create Pallet assignment"

    assert_text "Pallet assignment was successfully created"
    click_on "Back"
  end

  test "updating a Pallet assignment" do
    visit pallet_assignments_url
    click_on "Edit", match: :first

    fill_in "Location", with: @pallet_assignment.location_id
    fill_in "Pallet", with: @pallet_assignment.pallet_id
    click_on "Update Pallet assignment"

    assert_text "Pallet assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Pallet assignment" do
    visit pallet_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pallet assignment was successfully destroyed"
  end
end
