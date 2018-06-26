require "application_system_test_case"

class ReceptionsTest < ApplicationSystemTestCase
  setup do
    @reception = receptions(:one)
  end

  test "visiting the index" do
    visit receptions_url
    assert_selector "h1", text: "Receptions"
  end

  test "creating a Reception" do
    visit receptions_url
    click_on "New Reception"

    fill_in "Comment", with: @reception.comment
    fill_in "Document Number", with: @reception.document_number
    fill_in "Origin Place", with: @reception.origin_place
    fill_in "Reference Text", with: @reception.reference_text
    fill_in "Scheduling", with: @reception.scheduling_id
    fill_in "User", with: @reception.user_id
    fill_in "Vehicle Patent", with: @reception.vehicle_patent
    click_on "Create Reception"

    assert_text "Reception was successfully created"
    click_on "Back"
  end

  test "updating a Reception" do
    visit receptions_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @reception.comment
    fill_in "Document Number", with: @reception.document_number
    fill_in "Origin Place", with: @reception.origin_place
    fill_in "Reference Text", with: @reception.reference_text
    fill_in "Scheduling", with: @reception.scheduling_id
    fill_in "User", with: @reception.user_id
    fill_in "Vehicle Patent", with: @reception.vehicle_patent
    click_on "Update Reception"

    assert_text "Reception was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception" do
    visit receptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception was successfully destroyed"
  end
end
