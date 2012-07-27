require 'test_helper'

class IvavsControllerTest < ActionController::TestCase
  setup do
    @ivav = ivavs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ivavs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ivav" do
    assert_difference('Ivav.count') do
      post :create, ivav: { cliente: @ivav.cliente, codigo_de_comprobante: @ivav.codigo_de_comprobante, empresa: @ivav.empresa, fecha_de_la_factura: @ivav.fecha_de_la_factura, iva: @ivav.iva, neto_sin_iva: @ivav.neto_sin_iva, nro_de_comprobante: @ivav.nro_de_comprobante, percepcion_ingresos_brutuos: @ivav.percepcion_ingresos_brutuos, retencion_de_ganancias: @ivav.retencion_de_ganancias, retencion_de_iva: @ivav.retencion_de_iva, retencion_ingresos_brutos: @ivav.retencion_ingresos_brutos, rubro: @ivav.rubro, tipo_de_comprobante: @ivav.tipo_de_comprobante, total: @ivav.total }
    end

    assert_redirected_to ivav_path(assigns(:ivav))
  end

  test "should show ivav" do
    get :show, id: @ivav
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ivav
    assert_response :success
  end

  test "should update ivav" do
    put :update, id: @ivav, ivav: { cliente: @ivav.cliente, codigo_de_comprobante: @ivav.codigo_de_comprobante, empresa: @ivav.empresa, fecha_de_la_factura: @ivav.fecha_de_la_factura, iva: @ivav.iva, neto_sin_iva: @ivav.neto_sin_iva, nro_de_comprobante: @ivav.nro_de_comprobante, percepcion_ingresos_brutuos: @ivav.percepcion_ingresos_brutuos, retencion_de_ganancias: @ivav.retencion_de_ganancias, retencion_de_iva: @ivav.retencion_de_iva, retencion_ingresos_brutos: @ivav.retencion_ingresos_brutos, rubro: @ivav.rubro, tipo_de_comprobante: @ivav.tipo_de_comprobante, total: @ivav.total }
    assert_redirected_to ivav_path(assigns(:ivav))
  end

  test "should destroy ivav" do
    assert_difference('Ivav.count', -1) do
      delete :destroy, id: @ivav
    end

    assert_redirected_to ivavs_path
  end
end
