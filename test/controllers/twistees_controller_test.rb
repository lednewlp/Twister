require 'test_helper'

class TwisteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twistee = twistees(:one)
  end

  test "should get index" do
    get twistees_url
    assert_response :success
  end

  test "should get new" do
    get new_twistee_url
    assert_response :success
  end

  test "should create twistee" do
    assert_difference('Twistee.count') do
      post twistees_url, params: { twistee: { twistee: @twistee.twistee } }
    end

    assert_redirected_to twistee_url(Twistee.last)
  end

  test "should show twistee" do
    get twistee_url(@twistee)
    assert_response :success
  end

  test "should get edit" do
    get edit_twistee_url(@twistee)
    assert_response :success
  end

  test "should update twistee" do
    patch twistee_url(@twistee), params: { twistee: { twistee: @twistee.twistee } }
    assert_redirected_to twistee_url(@twistee)
  end

  test "should destroy twistee" do
    assert_difference('Twistee.count', -1) do
      delete twistee_url(@twistee)
    end

    assert_redirected_to twistees_url
  end
end
