class Cliente < ActiveRecord::Base
  attr_accessible :condicion_ante_el_iva, :cuit, :razon_social
end
