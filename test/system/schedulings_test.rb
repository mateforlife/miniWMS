require "application_system_test_case"

class SchedulingsTest < ApplicationSystemTestCase
  setup do
    @scheduling = schedulings(:one)
  end

  test "visiting the index" do
    visit schedulings_url
    assert_selector "h1", text: "Schedulings"
  end

  test "creating a Scheduling" do
    visit schedulings_url
    click_on "New Scheduling"

    fill_in "Client", with: @scheduling.client_id
    fill_in "Date", with: @scheduling.date
    fill_in "Door", with: @scheduling.door_id
    fill_in "Observation", with: @scheduling.observation
    fill_in "Operation", with: @scheduling.operation_id
    fill_in "Pallets Qty", with: @scheduling.pallets_qty
    fill_in "Status", with: @scheduling.status
    fill_in "User", with: @scheduling.user_id
    click_on "Create Scheduling"

    assert_text "Scheduling was successfully created"
    click_on "Back"
  end

  test "updating a Scheduling" do
    visit schedulings_url
    click_on "Edit", match: :first

    fill_in "Client", with: @scheduling.client_id
    fill_in "Date", with: @scheduling.date
    fill_in "Door", with: @scheduling.door_id
    fill_in "Observation", with: @scheduling.observation
    fill_in "Operation", with: @scheduling.operation_id
    fill_in "Pallets Qty", with: @scheduling.pallets_qty
    fill_in "Status", with: @scheduling.status
    fill_in "User", with: @scheduling.user_id
    click_on "Update Scheduling"

    assert_text "Scheduling was successfully updated"
    click_on "Back"
  end

  test "destroying a Scheduling" do
    visit schedulings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scheduling was successfully destroyed"
  end
end
