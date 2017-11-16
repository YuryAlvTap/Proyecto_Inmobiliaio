require 'test_helper'

class PropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propiedad = propiedads(:one)
  end

  test "should get index" do
    get propiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_propiedad_url
    assert_response :success
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post propiedads_url, params: { propiedad: { coeficiente: @propiedad.coeficiente, departamento: @propiedad.departamento, direccion: @propiedad.direccion, id_recinto: @propiedad.id_recinto, mt: @propiedad.mt, numero: @propiedad.numero, rol: @propiedad.rol, tipo_propiedad: @propiedad.tipo_propiedad, torre: @propiedad.torre, user_id: @propiedad.user_id } }
    end

    assert_redirected_to propiedad_url(Propiedad.last)
  end

  test "should show propiedad" do
    get propiedad_url(@propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_propiedad_url(@propiedad)
    assert_response :success
  end

  test "should update propiedad" do
    patch propiedad_url(@propiedad), params: { propiedad: { coeficiente: @propiedad.coeficiente, departamento: @propiedad.departamento, direccion: @propiedad.direccion, id_recinto: @propiedad.id_recinto, mt: @propiedad.mt, numero: @propiedad.numero, rol: @propiedad.rol, tipo_propiedad: @propiedad.tipo_propiedad, torre: @propiedad.torre, user_id: @propiedad.user_id } }
    assert_redirected_to propiedad_url(@propiedad)
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete propiedad_url(@propiedad)
    end

    assert_redirected_to propiedads_url
  end
end
