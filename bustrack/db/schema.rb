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

ActiveRecord::Schema.define(version: 20140609001435) do

  create_table "identities", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mapas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradas", force: true do |t|
    t.string   "nombre"
    t.boolean  "techo"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ruta_paradas", force: true do |t|
    t.integer "ruta_id"
    t.integer "parada_id"
    t.integer "tipo"
  end

  create_table "rutas", force: true do |t|
    t.string   "nombre"
    t.string   "frecuencia"
    t.integer  "precio"
    t.string   "horario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
