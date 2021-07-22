# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_18_100815) do

  create_table "expenses", force: :cascade do |t|
    t.integer "amount"
    t.integer "household_id"
    t.integer "payer_id_1"
    t.integer "amount_1"
    t.integer "payer_id_2"
    t.integer "amount_2"
    t.integer "payer_id_3"
    t.integer "amount_3"
    t.integer "payer_id_4"
    t.integer "amount_4"
    t.integer "payer_id_5"
    t.integer "amount_5"
    t.integer "payer_id_6"
    t.integer "amount_6"
    t.integer "payer_id_7"
    t.integer "amount_7"
    t.integer "payer_id_8"
    t.integer "amount_8"
    t.integer "payer_id_9"
    t.integer "amount_9"
    t.integer "payer_id_10"
    t.integer "amount_10"
    t.datetime "date"
    t.string "name"
    t.index ["household_id"], name: "index_expenses_on_household_id"
  end

  create_table "household_members", force: :cascade do |t|
    t.integer "household_id"
    t.integer "user_id"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["household_id"], name: "index_household_members_on_household_id"
    t.index ["user_id"], name: "index_household_members_on_user_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "name"
    t.integer "household_member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "main_household"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
