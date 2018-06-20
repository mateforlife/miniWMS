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

ActiveRecord::Schema.define(version: 2018_06_20_021604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doors", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "passage_id"
    t.bigint "slot_id"
    t.bigint "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available", default: true
    t.index ["level_id"], name: "index_locations_on_level_id"
    t.index ["passage_id"], name: "index_locations_on_passage_id"
    t.index ["slot_id"], name: "index_locations_on_slot_id"
  end

  create_table "operations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "passages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_locations", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_product_locations_on_location_id"
    t.index ["product_id"], name: "index_product_locations_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.string "client_code"
    t.integer "innerpack"
    t.string "ean13"
    t.string "dun14"
    t.string "aux_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedulings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.bigint "operation_id"
    t.string "observation"
    t.integer "pallets_qty"
    t.datetime "date"
    t.bigint "door_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["client_id"], name: "index_schedulings_on_client_id"
    t.index ["door_id"], name: "index_schedulings_on_door_id"
    t.index ["operation_id"], name: "index_schedulings_on_operation_id"
    t.index ["user_id"], name: "index_schedulings_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.integer "number"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "locations", "levels"
  add_foreign_key "locations", "passages"
  add_foreign_key "locations", "slots"
  add_foreign_key "product_locations", "locations"
  add_foreign_key "product_locations", "products"
  add_foreign_key "schedulings", "clients"
  add_foreign_key "schedulings", "doors"
  add_foreign_key "schedulings", "operations"
  add_foreign_key "schedulings", "users"
end
