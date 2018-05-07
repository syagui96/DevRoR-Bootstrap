require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  test "should get nuevo" do
    get productos_nuevo_url
    assert_response :success
  end

  test "should get buscar" do
    get productos_buscar_url
    assert_response :success
  end

end
