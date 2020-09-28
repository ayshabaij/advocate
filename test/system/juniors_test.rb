require "application_system_test_case"

class JuniorsTest < ApplicationSystemTestCase
  setup do
    @junior = juniors(:one)
  end

  test "visiting the index" do
    visit juniors_url
    assert_selector "h1", text: "Juniors"
  end

  test "creating a Junior" do
    visit juniors_url
    click_on "New Junior"

    fill_in "Email", with: @junior.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Junior"

    assert_text "Junior was successfully created"
    click_on "Back"
  end

  test "updating a Junior" do
    visit juniors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @junior.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Junior"

    assert_text "Junior was successfully updated"
    click_on "Back"
  end

  test "destroying a Junior" do
    visit juniors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Junior was successfully destroyed"
  end
end
