require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  test "should get registrar" do
    get clientes_registrar_url
    assert_response :success
  end

  test "should get buscar" do
    get clientes_buscar_url
    assert_response :success
  end

end
