require "application_system_test_case"

class CaseDocsTest < ApplicationSystemTestCase
  setup do
    @case_doc = case_docs(:one)
  end

  test "visiting the index" do
    visit case_docs_url
    assert_selector "h1", text: "Case Docs"
  end

  test "creating a Case doc" do
    visit case_docs_url
    click_on "New Case Doc"

    fill_in "Document name", with: @case_doc.document_name
    click_on "Create Case doc"

    assert_text "Case doc was successfully created"
    click_on "Back"
  end

  test "updating a Case doc" do
    visit case_docs_url
    click_on "Edit", match: :first

    fill_in "Document name", with: @case_doc.document_name
    click_on "Update Case doc"

    assert_text "Case doc was successfully updated"
    click_on "Back"
  end

  test "destroying a Case doc" do
    visit case_docs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case doc was successfully destroyed"
  end
end
