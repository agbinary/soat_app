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

ActiveRecord::Schema.define(version: 20170205212319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "contributions", force: :cascade do |t|
    t.integer  "subtype_id",                    null: false
    t.integer  "min_age"
    t.integer  "max_age"
    t.float    "commercial_rate",               null: false
    t.integer  "premium_value",                 null: false
    t.integer  "fosyga",                        null: false
    t.integer  "subtotal_premium_value_fosyga", null: false
    t.integer  "runt",                          null: false
    t.integer  "total_value",                   null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "contributions", ["subtype_id"], name: "index_contributions_on_subtype_id", using: :btree

  create_table "soats", force: :cascade do |t|
    t.integer  "user_id",                       null: false
    t.integer  "vehicle_id",                    null: false
    t.date     "start_date",                    null: false
    t.date     "end_date",                      null: false
    t.integer  "premium_value",                 null: false
    t.integer  "fosyga",                        null: false
    t.integer  "runt",                          null: false
    t.integer  "total_value",                   null: false
    t.boolean  "pay",           default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "soats", ["user_id"], name: "index_soats_on_user_id", using: :btree
  add_index "soats", ["vehicle_id"], name: "index_soats_on_vehicle_id", using: :btree

  create_table "subtypes", force: :cascade do |t|
    t.integer  "vehicle_class_id", null: false
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "subtypes", ["vehicle_class_id"], name: "index_subtypes_on_vehicle_class_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "identification_type",   null: false
    t.integer  "identification_number", null: false
    t.string   "name",                  null: false
    t.string   "surname",               null: false
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "vehicle_classes", force: :cascade do |t|
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "license_plate",    null: false
    t.integer  "vehicle_class_id", null: false
    t.string   "subtype"
    t.string   "age"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "vehicles", ["vehicle_class_id"], name: "index_vehicles_on_vehicle_class_id", using: :btree

  add_foreign_key "contributions", "subtypes"
  add_foreign_key "soats", "users"
  add_foreign_key "soats", "vehicles"
  add_foreign_key "subtypes", "vehicle_classes"
  add_foreign_key "vehicles", "vehicle_classes"
end
