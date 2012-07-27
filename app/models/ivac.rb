class Ivac < ActiveRecord::Base
  attr_accessible :cliente, :codigo_de_comprobante, :empresa, :fecha_de_la_factura, :iva, :neto_sin_iva, :no_gravado_exento, :nro_de_comprobante, :percepcion_ingresos_brutuos, :retencion_de_ganancias, :retencion_de_iva, :retencion_ingresos_brutos, :rubro, :tipo_de_comprobante, :total
end
