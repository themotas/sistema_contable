# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120722212831) do

  create_table "clientes", :force => true do |t|
    t.string   "razon_social"
    t.string   "cuit"
    t.string   "condicion_ante_el_iva"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "razon_social"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "cuit"
    t.string   "condicion_ante_el_iva"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "ivacs", :force => true do |t|
    t.integer  "empresa"
    t.string   "tipo_de_comprobante"
    t.string   "codigo_de_comprobante"
    t.string   "nro_de_comprobante"
    t.integer  "cliente"
    t.date     "fecha_de_la_factura"
    t.string   "rubro"
    t.decimal  "neto_sin_iva"
    t.decimal  "no_gravado_exento"
    t.integer  "iva"
    t.decimal  "percepcion_ingresos_brutuos"
    t.decimal  "retencion_ingresos_brutos"
    t.decimal  "retencion_de_iva"
    t.decimal  "retencion_de_ganancias"
    t.decimal  "total"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "ivavs", :force => true do |t|
    t.integer  "empresa"
    t.string   "tipo_de_comprobante"
    t.string   "codigo_de_comprobante"
    t.string   "nro_de_comprobante"
    t.integer  "cliente"
    t.date     "fecha_de_la_factura"
    t.string   "rubro"
    t.decimal  "neto_sin_iva"
    t.integer  "iva"
    t.decimal  "percepcion_ingresos_brutuos"
    t.decimal  "retencion_ingresos_brutos"
    t.decimal  "retencion_de_iva"
    t.decimal  "retencion_de_ganancias"
    t.decimal  "total"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

end
