class CreateIvavs < ActiveRecord::Migration
  def change
    create_table :ivavs do |t|
      t.integer :empresa
      t.string :tipo_de_comprobante
      t.string :codigo_de_comprobante
      t.string :nro_de_comprobante
      t.integer :cliente
      t.date :fecha_de_la_factura
      t.string :rubro
      t.decimal :neto_sin_iva
      t.integer :iva
      t.decimal :percepcion_ingresos_brutuos
      t.decimal :retencion_ingresos_brutos
      t.decimal :retencion_de_iva
      t.decimal :retencion_de_ganancias
      t.decimal :total

      t.timestamps
    end
  end
end
