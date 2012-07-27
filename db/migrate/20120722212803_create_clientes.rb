class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :razon_social
      t.string :cuit
      t.string :condicion_ante_el_iva

      t.timestamps
    end
  end
end
