require "application_system_test_case"

class AdvocatesTest < ApplicationSystemTestCase
  setup do
    @advocate = advocates(:one)
  end

  test "visiting the index" do
    visit advocates_url
    assert_selector "h1", text: "Advocates"
  end

  test "creating a Advocate" do
    visit advocates_url
    click_on "New Advocate"

    fill_in "Email", with: @advocate.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Advocate"

    assert_text "Advocate was successfully created"
    click_on "Back"
  end

  test "updating a Advocate" do
    visit advocates_url
    click_on "Edit", match: :first

    fill_in "Email", with: @advocate.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Advocate"

    assert_text "Advocate was successfully updated"
    click_on "Back"
  end

  test "destroying a Advocate" do
    visit advocates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advocate was successfully destroyed"
  end
end
