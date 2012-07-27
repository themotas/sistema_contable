class Empresa < ActiveRecord::Base
  attr_accessible :condicion_ante_el_iva, :cuit, :direccion, :razon_social, :telefono
end
