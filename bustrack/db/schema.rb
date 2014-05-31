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

ActiveRecord::Schema.define(version: 20140530102221) do

  create_table "mapas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradas", force: true do |t|
    t.string   "nombre"
    t.boolean  "techo"
    t.float    "latitid"
    t.float    "longuitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ruta", force: true do |t|
    t.string   "nombre"
    t.float    "Inicio_Latitud"
    t.float    "Inicio_Longuitud"
    t.float    "Fin_Latitud"
    t.float    "Fin_Longuitud"
    t.string   "Frecuencia"
    t.integer  "Precio"
    t.string   "Horario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
