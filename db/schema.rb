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

ActiveRecord::Schema.define(version: 2019_04_30_061418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "account_type_id"
    t.index ["account_type_id"], name: "index_accounts_on_account_type_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "funds", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "general_ledgers", force: :cascade do |t|
    t.float "value"
    t.date "effectivedate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fund_id"
    t.bigint "account_id"
    t.index ["account_id"], name: "index_general_ledgers_on_account_id"
    t.index ["fund_id"], name: "index_general_ledgers_on_fund_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.date "dob"
    t.text "address"
  end

  add_foreign_key "accounts", "account_types"
  add_foreign_key "accounts", "users"
  add_foreign_key "funds", "users"
  add_foreign_key "general_ledgers", "accounts"
  add_foreign_key "general_ledgers", "funds"
end
