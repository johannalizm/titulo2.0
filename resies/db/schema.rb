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

ActiveRecord::Schema.define(version: 20181113190417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formularios", force: :cascade do |t|
    t.string "nombre_encargado"
    t.string "telefono"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instituciones", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "codigopostal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tipoinstitucione_id"
    t.bigint "tiporelacione_id"
    t.bigint "region_id"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["region_id"], name: "index_instituciones_on_region_id"
    t.index ["tipoinstitucione_id"], name: "index_instituciones_on_tipoinstitucione_id"
    t.index ["tiporelacione_id"], name: "index_instituciones_on_tiporelacione_id"
  end

  create_table "paises", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregunta", force: :cascade do |t|
    t.string "identificador"
    t.string "pregunta"
    t.string "categoria"
    t.string "subcategoria"
    t.string "tiporespuesta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "paise_id"
    t.index ["paise_id"], name: "index_regions_on_paise_id"
  end

  create_table "resultados", force: :cascade do |t|
    t.string "respuesta"
    t.string "comentario"
    t.string "verificacion"
    t.string "descripcion"
    t.bigint "formulario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pregunta_id"
    t.index ["formulario_id"], name: "index_resultados_on_formulario_id"
    t.index ["pregunta_id"], name: "index_resultados_on_pregunta_id"
  end

  create_table "tipoinstituciones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiporelaciones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rol"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "instituciones", "regions"
  add_foreign_key "instituciones", "tipoinstituciones"
  add_foreign_key "instituciones", "tiporelaciones"
  add_foreign_key "regions", "paises"
  add_foreign_key "resultados", "formularios"
  add_foreign_key "resultados", "pregunta", column: "pregunta_id"
end
