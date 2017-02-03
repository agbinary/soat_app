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

ActiveRecord::Schema.define(version: 20170203015044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contributions", force: :cascade do |t|
    t.integer  "subtype_id",                    null: false
    t.string   "age"
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

  create_table "subtypes", force: :cascade do |t|
    t.integer  "vehicle_id",  null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subtypes", ["vehicle_id"], name: "index_subtypes_on_vehicle_id", using: :btree

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

  create_table "vehicles", force: :cascade do |t|
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "contributions", "subtypes"
  add_foreign_key "subtypes", "vehicles"
end
