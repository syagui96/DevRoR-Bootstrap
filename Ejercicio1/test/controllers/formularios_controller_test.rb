require 'test_helper'

class FormulariosControllerTest < ActionDispatch::IntegrationTest
  test "should get ejercicio1" do
    get formularios_ejercicio1_url
    assert_response :success
  end

  test "should get ejercicio2" do
    get formularios_ejercicio2_url
    assert_response :success
  end

  test "should get ejercicio3" do
    get formularios_ejercicio3_url
    assert_response :success
  end

end
