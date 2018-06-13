require "application_system_test_case"

class DoorsTest < ApplicationSystemTestCase
  setup do
    @door = doors(:one)
  end

  test "visiting the index" do
    visit doors_url
    assert_selector "h1", text: "Doors"
  end

  test "creating a Door" do
    visit doors_url
    click_on "New Door"

    fill_in "Number", with: @door.number
    click_on "Create Door"

    assert_text "Door was successfully created"
    click_on "Back"
  end

  test "updating a Door" do
    visit doors_url
    click_on "Edit", match: :first

    fill_in "Number", with: @door.number
    click_on "Update Door"

    assert_text "Door was successfully updated"
    click_on "Back"
  end

  test "destroying a Door" do
    visit doors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Door was successfully destroyed"
  end
end
