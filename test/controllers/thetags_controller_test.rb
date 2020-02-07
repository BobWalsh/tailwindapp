require 'test_helper'

class ThetagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thetag = thetags(:one)
  end

  test "should get index" do
    get thetags_url
    assert_response :success
  end

  test "should get new" do
    get new_thetag_url
    assert_response :success
  end

  test "should create thetag" do
    assert_difference('Thetag.count') do
      post thetags_url, params: { thetag: { color: @thetag.color, is-favorite: @thetag.is-favorite, name: @thetag.name, user_id: @thetag.user_id } }
    end

    assert_redirected_to thetag_url(Thetag.last)
  end

  test "should show thetag" do
    get thetag_url(@thetag)
    assert_response :success
  end

  test "should get edit" do
    get edit_thetag_url(@thetag)
    assert_response :success
  end

  test "should update thetag" do
    patch thetag_url(@thetag), params: { thetag: { color: @thetag.color, is-favorite: @thetag.is-favorite, name: @thetag.name, user_id: @thetag.user_id } }
    assert_redirected_to thetag_url(@thetag)
  end

  test "should destroy thetag" do
    assert_difference('Thetag.count', -1) do
      delete thetag_url(@thetag)
    end

    assert_redirected_to thetags_url
  end
end
