require "application_system_test_case"

class ThetagsTest < ApplicationSystemTestCase
  setup do
    @thetag = thetags(:one)
  end

  test "visiting the index" do
    visit thetags_url
    assert_selector "h1", text: "Thetags"
  end

  test "creating a Thetag" do
    visit thetags_url
    click_on "New Thetag"

    fill_in "Color", with: @thetag.color
    check "Is-favorite" if @thetag.is-favorite
    fill_in "Name", with: @thetag.name
    fill_in "User", with: @thetag.user_id
    click_on "Create Thetag"

    assert_text "Thetag was successfully created"
    click_on "Back"
  end

  test "updating a Thetag" do
    visit thetags_url
    click_on "Edit", match: :first

    fill_in "Color", with: @thetag.color
    check "Is-favorite" if @thetag.is-favorite
    fill_in "Name", with: @thetag.name
    fill_in "User", with: @thetag.user_id
    click_on "Update Thetag"

    assert_text "Thetag was successfully updated"
    click_on "Back"
  end

  test "destroying a Thetag" do
    visit thetags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thetag was successfully destroyed"
  end
end
