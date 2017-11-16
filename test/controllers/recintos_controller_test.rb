require 'test_helper'

class RecintosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recinto = recintos(:one)
  end

  test "should get index" do
    get recintos_url
    assert_response :success
  end

  test "should get new" do
    get new_recinto_url
    assert_response :success
  end

  test "should create recinto" do
    assert_difference('Recinto.count') do
      post recintos_url, params: { recinto: { ciudad_recinto: @recinto.ciudad_recinto, comuna_recinto: @recinto.comuna_recinto, direccion_recinto: @recinto.direccion_recinto, numero_recinto: @recinto.numero_recinto, pais_recinto: @recinto.pais_recinto, region_recinto: @recinto.region_recinto, tipo_recinto: @recinto.tipo_recinto, ubicacion_recinto: @recinto.ubicacion_recinto } }
    end

    assert_redirected_to recinto_url(Recinto.last)
  end

  test "should show recinto" do
    get recinto_url(@recinto)
    assert_response :success
  end

  test "should get edit" do
    get edit_recinto_url(@recinto)
    assert_response :success
  end

  test "should update recinto" do
    patch recinto_url(@recinto), params: { recinto: { ciudad_recinto: @recinto.ciudad_recinto, comuna_recinto: @recinto.comuna_recinto, direccion_recinto: @recinto.direccion_recinto, numero_recinto: @recinto.numero_recinto, pais_recinto: @recinto.pais_recinto, region_recinto: @recinto.region_recinto, tipo_recinto: @recinto.tipo_recinto, ubicacion_recinto: @recinto.ubicacion_recinto } }
    assert_redirected_to recinto_url(@recinto)
  end

  test "should destroy recinto" do
    assert_difference('Recinto.count', -1) do
      delete recinto_url(@recinto)
    end

    assert_redirected_to recintos_url
  end
end
