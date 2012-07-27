class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razon_social
      t.string :direccion
      t.string :telefono
      t.string :cuit
      t.string :condicion_ante_el_iva

      t.timestamps
    end
  end
end
