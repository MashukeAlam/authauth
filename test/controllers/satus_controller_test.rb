require "test_helper"

class SatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @satu = satus(:one)
  end

  test "should get index" do
    get satus_url
    assert_response :success
  end

  test "should get new" do
    get new_satu_url
    assert_response :success
  end

  test "should create satu" do
    assert_difference('Satu.count') do
      post satus_url, params: { satu: { post: @satu.post } }
    end

    assert_redirected_to satu_url(Satu.last)
  end

  test "should show satu" do
    get satu_url(@satu)
    assert_response :success
  end

  test "should get edit" do
    get edit_satu_url(@satu)
    assert_response :success
  end

  test "should update satu" do
    patch satu_url(@satu), params: { satu: { post: @satu.post } }
    assert_redirected_to satu_url(@satu)
  end

  test "should destroy satu" do
    assert_difference('Satu.count', -1) do
      delete satu_url(@satu)
    end

    assert_redirected_to satus_url
  end
end
