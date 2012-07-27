require 'test_helper'

class IvacsControllerTest < ActionController::TestCase
  setup do
    @ivac = ivacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ivacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ivac" do
    assert_difference('Ivac.count') do
      post :create, ivac: { cliente: @ivac.cliente, codigo_de_comprobante: @ivac.codigo_de_comprobante, empresa: @ivac.empresa, fecha_de_la_factura: @ivac.fecha_de_la_factura, iva: @ivac.iva, neto_sin_iva: @ivac.neto_sin_iva, no_gravado_exento: @ivac.no_gravado_exento, nro_de_comprobante: @ivac.nro_de_comprobante, percepcion_ingresos_brutuos: @ivac.percepcion_ingresos_brutuos, retencion_de_ganancias: @ivac.retencion_de_ganancias, retencion_de_iva: @ivac.retencion_de_iva, retencion_ingresos_brutos: @ivac.retencion_ingresos_brutos, rubro: @ivac.rubro, tipo_de_comprobante: @ivac.tipo_de_comprobante, total: @ivac.total }
    end

    assert_redirected_to ivac_path(assigns(:ivac))
  end

  test "should show ivac" do
    get :show, id: @ivac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ivac
    assert_response :success
  end

  test "should update ivac" do
    put :update, id: @ivac, ivac: { cliente: @ivac.cliente, codigo_de_comprobante: @ivac.codigo_de_comprobante, empresa: @ivac.empresa, fecha_de_la_factura: @ivac.fecha_de_la_factura, iva: @ivac.iva, neto_sin_iva: @ivac.neto_sin_iva, no_gravado_exento: @ivac.no_gravado_exento, nro_de_comprobante: @ivac.nro_de_comprobante, percepcion_ingresos_brutuos: @ivac.percepcion_ingresos_brutuos, retencion_de_ganancias: @ivac.retencion_de_ganancias, retencion_de_iva: @ivac.retencion_de_iva, retencion_ingresos_brutos: @ivac.retencion_ingresos_brutos, rubro: @ivac.rubro, tipo_de_comprobante: @ivac.tipo_de_comprobante, total: @ivac.total }
    assert_redirected_to ivac_path(assigns(:ivac))
  end

  test "should destroy ivac" do
    assert_difference('Ivac.count', -1) do
      delete :destroy, id: @ivac
    end

    assert_redirected_to ivacs_path
  end
end
