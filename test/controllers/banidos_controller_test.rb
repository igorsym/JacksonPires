require 'test_helper'

class BanidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banido = banidos(:one)
  end

  test "should get index" do
    get banidos_url
    assert_response :success
  end

  test "should get new" do
    get new_banido_url
    assert_response :success
  end

  test "should create banido" do
    assert_difference('Banido.count') do
      post banidos_url, params: { banido: { permanente: @banido.permanente, termino: @banido.termino } }
    end

    assert_redirected_to banido_url(Banido.last)
  end

  test "should show banido" do
    get banido_url(@banido)
    assert_response :success
  end

  test "should get edit" do
    get edit_banido_url(@banido)
    assert_response :success
  end

  test "should update banido" do
    patch banido_url(@banido), params: { banido: { permanente: @banido.permanente, termino: @banido.termino } }
    assert_redirected_to banido_url(@banido)
  end

  test "should destroy banido" do
    assert_difference('Banido.count', -1) do
      delete banido_url(@banido)
    end

    assert_redirected_to banidos_url
  end
end
