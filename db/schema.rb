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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140802153851) do

  create_table "administradors", force: true do |t|
    t.string   "usuario"
    t.string   "nombre"
    t.string   "contrasena"
    t.boolean  "habilitado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animals", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "laboratorios", force: true do |t|
    t.string   "nombre"
    t.string   "razon_social"
    t.string   "direccion"
    t.string   "departamento"
    t.string   "telefono"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicamentos", force: true do |t|
    t.string   "nombre"
    t.integer  "laboratorio_id"
    t.text     "indicaciones"
    t.text     "composicion"
    t.text     "administracion_dosis"
    t.integer  "categoria_id"
    t.string   "presentacion"
    t.string   "tipo"
    t.text     "contraindicacion_precaucion"
    t.string   "te_carne"
    t.string   "te_leche"
    t.string   "mgap_nro"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medicamentos", ["categoria_id"], name: "index_medicamentos_on_categoria_id"
  add_index "medicamentos", ["laboratorio_id"], name: "index_medicamentos_on_laboratorio_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.boolean  "pro",        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
