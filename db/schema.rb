# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_02_145322) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "locality"
    t.string "digital_code"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_addresses_on_member_id"
  end

  create_table "bios", force: :cascade do |t|
    t.text "message"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_bios_on_member_id"
  end

  create_table "departmental_heads", force: :cascade do |t|
    t.string "name"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_departmental_heads_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaderships", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "departmental_head_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.index ["departmental_head_id"], name: "index_leaderships_on_departmental_head_id"
    t.index ["member_id"], name: "index_leaderships_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "membership"
    t.string "phone"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "role"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_users_on_member_id"
  end

  add_foreign_key "addresses", "members"
  add_foreign_key "bios", "members"
  add_foreign_key "departmental_heads", "departments"
  add_foreign_key "leaderships", "departmental_heads"
  add_foreign_key "leaderships", "members"
  add_foreign_key "users", "members"
end
