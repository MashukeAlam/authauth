require "application_system_test_case"

class SatusTest < ApplicationSystemTestCase
  setup do
    @satu = satus(:one)
  end

  test "visiting the index" do
    visit satus_url
    assert_selector "h1", text: "Satus"
  end

  test "creating a Satu" do
    visit satus_url
    click_on "New Satu"

    fill_in "Post", with: @satu.post
    click_on "Create Satu"

    assert_text "Satu was successfully created"
    click_on "Back"
  end

  test "updating a Satu" do
    visit satus_url
    click_on "Edit", match: :first

    fill_in "Post", with: @satu.post
    click_on "Update Satu"

    assert_text "Satu was successfully updated"
    click_on "Back"
  end

  test "destroying a Satu" do
    visit satus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Satu was successfully destroyed"
  end
end
