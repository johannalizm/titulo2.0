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

ActiveRecord::Schema.define(version: 20181227174525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternativas", force: :cascade do |t|
    t.string "nombre"
    t.string "puntaje"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_alternativas_on_question_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formularios", force: :cascade do |t|
    t.string "nombre_encargado"
    t.string "telefono"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_formularios_on_user_id"
  end

  create_table "historia", force: :cascade do |t|
    t.float "global"
    t.float "gobpon"
    t.float "gobbru"
    t.float "gob1pon"
    t.float "gob1bru"
    t.float "gob2pon"
    t.float "gob2bru"
    t.float "gob3pon"
    t.float "gob3bru"
    t.float "gob4pon"
    t.float "gob4bru"
    t.float "gob5pon"
    t.float "gob5bru"
    t.float "gob6pon"
    t.float "gob6bru"
    t.float "cupon"
    t.float "cubru"
    t.float "cu1pon"
    t.float "cu1bru"
    t.float "cu2pon"
    t.float "cu2bru"
    t.float "cu3pon"
    t.float "cu3bru"
    t.float "cu4pon"
    t.float "cu4bru"
    t.float "cu5pon"
    t.float "cu5bru"
    t.float "cu6pon"
    t.float "cu6bru"
    t.float "cu7pon"
    t.float "cu7bru"
    t.float "acpon"
    t.float "acbru"
    t.float "ac1pon"
    t.float "ac1bru"
    t.float "ac2pon"
    t.float "ac2bru"
    t.float "ac3pon"
    t.float "ac3bru"
    t.float "ac4pon"
    t.float "ac4bru"
    t.float "ac5pon"
    t.float "ac5bru"
    t.float "ac6pon"
    t.float "ac6bru"
    t.float "ac7pon"
    t.float "ac7bru"
    t.float "ac8pon"
    t.float "ac8bru"
    t.float "gcpon"
    t.float "gcbru"
    t.float "gc1pon"
    t.float "gc1bru"
    t.float "gc2pon"
    t.float "gc2bru"
    t.float "gc3pon"
    t.float "gc3bru"
    t.float "gc4pon"
    t.float "gc4bru"
    t.float "gc5pon"
    t.float "gc5bru"
    t.float "gc6pon"
    t.float "gc6bru"
    t.float "gc7pon"
    t.float "gc7bru"
    t.float "gc8pon"
    t.float "gc8bru"
    t.float "gc9pon"
    t.float "gc9bru"
    t.float "gc10pon"
    t.float "gc10bru"
    t.float "gc11pon"
    t.float "gc11bru"
    t.float "gc12pon"
    t.float "gc12bru"
    t.float "gc13pon"
    t.float "gc13bru"
    t.float "gc14pon"
    t.float "gc14bru"
    t.float "gc15pon"
    t.float "gc15bru"
    t.float "rspon"
    t.float "rsbru"
    t.float "rs1pon"
    t.float "rs1bru"
    t.float "rs2pon"
    t.float "rs2bru"
    t.float "rs3pon"
    t.float "rs3bru"
    t.float "rs4pon"
    t.float "rs4bru"
    t.float "rs5pon"
    t.float "rs5bru"
    t.float "rs6pon"
    t.float "rs6bru"
    t.float "rs7pon"
    t.float "rs7bru"
    t.float "rs8pon"
    t.float "rs8bru"
    t.float "rs9pon"
    t.float "rs9bru"
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

  create_table "questions", force: :cascade do |t|
    t.string "indicador"
    t.string "pregunta"
    t.string "tiporespuesta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subcat_id"
    t.index ["subcat_id"], name: "index_questions_on_subcat_id"
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
    t.bigint "question_id"
    t.index ["formulario_id"], name: "index_resultados_on_formulario_id"
    t.index ["question_id"], name: "index_resultados_on_question_id"
  end

  create_table "subcats", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cat_id"
    t.index ["cat_id"], name: "index_subcats_on_cat_id"
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
    t.bigserial "ide", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alternativas", "questions"
  add_foreign_key "formularios", "users"
  add_foreign_key "instituciones", "regions"
  add_foreign_key "instituciones", "tipoinstituciones"
  add_foreign_key "instituciones", "tiporelaciones"
  add_foreign_key "questions", "subcats"
  add_foreign_key "regions", "paises"
  add_foreign_key "resultados", "formularios"
  add_foreign_key "resultados", "questions"
  add_foreign_key "subcats", "cats"
end
