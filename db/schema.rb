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

ActiveRecord::Schema.define(version: 20170208013515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rols", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soats", force: :cascade do |t|
    t.string   "number_cart"
    t.string   "holder_cart"
    t.date     "date_end_cart"
    t.integer  "code_card"
    t.integer  "number_quotas"
    t.integer  "vehicle_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "expiration"
    t.index ["vehicle_id"], name: "index_soats_on_vehicle_id", using: :btree
  end

  create_table "subtype_vehicles", force: :cascade do |t|
    t.float    "prima"
    t.string   "description"
    t.integer  "type_vehicle_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "type_measure"
    t.integer  "code"
    t.string   "description_age"
    t.index ["type_vehicle_id"], name: "index_subtype_vehicles_on_type_vehicle_id", using: :btree
  end

  create_table "type_documents", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "type_vehicles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "type_document_id"
    t.string   "number_document"
    t.string   "names"
    t.string   "surnames"
    t.string   "phone"
    t.integer  "rol_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["rol_id"], name: "index_users_on_rol_id", using: :btree
    t.index ["type_document_id"], name: "index_users_on_type_document_id", using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "age"
    t.integer  "subtype_vehicle_id"
    t.integer  "user_id"
    t.integer  "n_passengers"
    t.integer  "cylinder"
    t.float    "tonnes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "plate"
    t.index ["subtype_vehicle_id"], name: "index_vehicles_on_subtype_vehicle_id", using: :btree
    t.index ["user_id"], name: "index_vehicles_on_user_id", using: :btree
  end

  add_foreign_key "soats", "vehicles"
  add_foreign_key "subtype_vehicles", "type_vehicles"
  add_foreign_key "users", "rols"
  add_foreign_key "users", "type_documents"
  add_foreign_key "vehicles", "subtype_vehicles"
  add_foreign_key "vehicles", "users"
end
