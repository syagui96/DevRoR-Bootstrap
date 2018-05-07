require 'test_helper'

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  test "should get registrar" do
    get servicios_registrar_url
    assert_response :success
  end

  test "should get buscar" do
    get servicios_buscar_url
    assert_response :success
  end

end
