require 'test_helper'

class TipoGastosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_gasto = tipo_gastos(:one)
  end

  test "should get index" do
    get tipo_gastos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_gasto_url
    assert_response :success
  end

  test "should create tipo_gasto" do
    assert_difference('TipoGasto.count') do
      post tipo_gastos_url, params: { tipo_gasto: { descripcion_gasto: @tipo_gasto.descripcion_gasto } }
    end

    assert_redirected_to tipo_gasto_url(TipoGasto.last)
  end

  test "should show tipo_gasto" do
    get tipo_gasto_url(@tipo_gasto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_gasto_url(@tipo_gasto)
    assert_response :success
  end

  test "should update tipo_gasto" do
    patch tipo_gasto_url(@tipo_gasto), params: { tipo_gasto: { descripcion_gasto: @tipo_gasto.descripcion_gasto } }
    assert_redirected_to tipo_gasto_url(@tipo_gasto)
  end

  test "should destroy tipo_gasto" do
    assert_difference('TipoGasto.count', -1) do
      delete tipo_gasto_url(@tipo_gasto)
    end

    assert_redirected_to tipo_gastos_url
  end
end
