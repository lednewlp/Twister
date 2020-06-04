require "application_system_test_case"

class TwisteesTest < ApplicationSystemTestCase
  setup do
    @twistee = twistees(:one)
  end

  test "visiting the index" do
    visit twistees_url
    assert_selector "h1", text: "Twistees"
  end

  test "creating a Twistee" do
    visit twistees_url
    click_on "New Twistee"

    fill_in "Twistee", with: @twistee.twistee
    click_on "Create Twistee"

    assert_text "Twistee was successfully created"
    click_on "Back"
  end

  test "updating a Twistee" do
    visit twistees_url
    click_on "Edit", match: :first

    fill_in "Twistee", with: @twistee.twistee
    click_on "Update Twistee"

    assert_text "Twistee was successfully updated"
    click_on "Back"
  end

  test "destroying a Twistee" do
    visit twistees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twistee was successfully destroyed"
  end
end
