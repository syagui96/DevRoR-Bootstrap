require 'test_helper'

class EstacionamientosControllerTest < ActionDispatch::IntegrationTest
  test "should get registrar" do
    get estacionamientos_registrar_url
    assert_response :success
  end

  test "should get buscar" do
    get estacionamientos_buscar_url
    assert_response :success
  end

end
