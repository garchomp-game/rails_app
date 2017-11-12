require 'test_helper'

class AuthrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authro = authros(:one)
  end

  test "should get index" do
    get authros_url
    assert_response :success
  end

  test "should get new" do
    get new_authro_url
    assert_response :success
  end

  test "should create authro" do
    assert_difference('Authro.count') do
      post authros_url, params: { authro: { address: @authro.address, birth: @authro.birth, ctype: @authro.ctype, name: @authro.name, photo: @authro.photo, user_id: @authro.user_id } }
    end

    assert_redirected_to authro_url(Authro.last)
  end

  test "should show authro" do
    get authro_url(@authro)
    assert_response :success
  end

  test "should get edit" do
    get edit_authro_url(@authro)
    assert_response :success
  end

  test "should update authro" do
    patch authro_url(@authro), params: { authro: { address: @authro.address, birth: @authro.birth, ctype: @authro.ctype, name: @authro.name, photo: @authro.photo, user_id: @authro.user_id } }
    assert_redirected_to authro_url(@authro)
  end

  test "should destroy authro" do
    assert_difference('Authro.count', -1) do
      delete authro_url(@authro)
    end

    assert_redirected_to authros_url
  end
end
