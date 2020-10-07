require 'test_helper'

class CaseDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_doc = case_docs(:one)
  end

  test "should get index" do
    get case_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_case_doc_url
    assert_response :success
  end

  test "should create case_doc" do
    assert_difference('CaseDoc.count') do
      post case_docs_url, params: { case_doc: { document_name: @case_doc.document_name } }
    end

    assert_redirected_to case_doc_url(CaseDoc.last)
  end

  test "should show case_doc" do
    get case_doc_url(@case_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_doc_url(@case_doc)
    assert_response :success
  end

  test "should update case_doc" do
    patch case_doc_url(@case_doc), params: { case_doc: { document_name: @case_doc.document_name } }
    assert_redirected_to case_doc_url(@case_doc)
  end

  test "should destroy case_doc" do
    assert_difference('CaseDoc.count', -1) do
      delete case_doc_url(@case_doc)
    end

    assert_redirected_to case_docs_url
  end
end
