require 'test_helper'

class TipoPropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_propiedad = tipo_propiedads(:one)
  end

  test "should get index" do
    get tipo_propiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_propiedad_url
    assert_response :success
  end

  test "should create tipo_propiedad" do
    assert_difference('TipoPropiedad.count') do
      post tipo_propiedads_url, params: { tipo_propiedad: { name: @tipo_propiedad.name } }
    end

    assert_redirected_to tipo_propiedad_url(TipoPropiedad.last)
  end

  test "should show tipo_propiedad" do
    get tipo_propiedad_url(@tipo_propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_propiedad_url(@tipo_propiedad)
    assert_response :success
  end

  test "should update tipo_propiedad" do
    patch tipo_propiedad_url(@tipo_propiedad), params: { tipo_propiedad: { name: @tipo_propiedad.name } }
    assert_redirected_to tipo_propiedad_url(@tipo_propiedad)
  end

  test "should destroy tipo_propiedad" do
    assert_difference('TipoPropiedad.count', -1) do
      delete tipo_propiedad_url(@tipo_propiedad)
    end

    assert_redirected_to tipo_propiedads_url
  end
end
