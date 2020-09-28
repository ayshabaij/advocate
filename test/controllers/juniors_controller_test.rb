require 'test_helper'

class JuniorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @junior = juniors(:one)
  end

  test "should get index" do
    get juniors_url
    assert_response :success
  end

  test "should get new" do
    get new_junior_url
    assert_response :success
  end

  test "should create junior" do
    assert_difference('Junior.count') do
      post juniors_url, params: { junior: { email: @junior.email, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to junior_url(Junior.last)
  end

  test "should show junior" do
    get junior_url(@junior)
    assert_response :success
  end

  test "should get edit" do
    get edit_junior_url(@junior)
    assert_response :success
  end

  test "should update junior" do
    patch junior_url(@junior), params: { junior: { email: @junior.email, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to junior_url(@junior)
  end

  test "should destroy junior" do
    assert_difference('Junior.count', -1) do
      delete junior_url(@junior)
    end

    assert_redirected_to juniors_url
  end
end
