require 'test_helper'

class ServadicControllerTest < ActionDispatch::IntegrationTest
  test "should get registrar" do
    get servadic_registrar_url
    assert_response :success
  end

  test "should get buscar" do
    get servadic_buscar_url
    assert_response :success
  end

end
