require 'test_helper'

class TopfotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topfoto = topfotos(:one)
  end

  test "should get index" do
    get topfotos_url
    assert_response :success
  end

  test "should get new" do
    get new_topfoto_url
    assert_response :success
  end

  test "should create topfoto" do
    assert_difference('Topfoto.count') do
      post topfotos_url, params: { topfoto: { descricao: @topfoto.descricao, foto: @topfoto.foto } }
    end

    assert_redirected_to topfoto_url(Topfoto.last)
  end

  test "should show topfoto" do
    get topfoto_url(@topfoto)
    assert_response :success
  end

  test "should get edit" do
    get edit_topfoto_url(@topfoto)
    assert_response :success
  end

  test "should update topfoto" do
    patch topfoto_url(@topfoto), params: { topfoto: { descricao: @topfoto.descricao, foto: @topfoto.foto } }
    assert_redirected_to topfoto_url(@topfoto)
  end

  test "should destroy topfoto" do
    assert_difference('Topfoto.count', -1) do
      delete topfoto_url(@topfoto)
    end

    assert_redirected_to topfotos_url
  end
end
