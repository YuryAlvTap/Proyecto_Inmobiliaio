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

ActiveRecord::Schema.define(version: 20171115001041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "propiedads", force: :cascade do |t|
    t.integer "id_recinto"
    t.string "direccion"
    t.string "numero"
    t.string "departamento"
    t.string "rol"
    t.string "mt"
    t.float "coeficiente"
    t.string "tipo_propiedad"
    t.string "torre"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recinto_id"
    t.index ["recinto_id"], name: "index_propiedads_on_recinto_id"
    t.index ["user_id"], name: "index_propiedads_on_user_id"
  end

  create_table "recintos", force: :cascade do |t|
    t.string "tipo_recinto"
    t.string "direccion_recinto"
    t.string "numero_recinto"
    t.string "comuna_recinto"
    t.string "ciudad_recinto"
    t.string "region_recinto"
    t.string "pais_recinto"
    t.string "ubicacion_recinto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "nombre", default: "", null: false
    t.string "apellido_paterno", default: "", null: false
    t.string "apellido_Materno", default: "", null: false
    t.string "rut", default: "", null: false
    t.integer "celular", default: 0, null: false
    t.string "foto", default: ""
    t.string "perfil", default: "4", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "propiedads", "recintos"
  add_foreign_key "propiedads", "users"
end
