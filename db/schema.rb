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

ActiveRecord::Schema.define(version: 2021_01_10_052720) do

  create_table "account_type", force: :cascade do |t|
    t.string "type_id"
    t.string "name"
    t.string "rate"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "acc_id"
    t.string "users_id"
    t.string "name"
    t.datetime "created", null: false
    t.string "type"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "trans_id"
    t.string "account_id"
    t.string "amount"
    t.string "type"
    t.datetime "date", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "city"
    t.string "zip_code"
    t.string "number"
    t.datetime "birth_date"
    t.string "gender"
    t.string "salary"
    t.string "occupation"
    t.datetime "updated_at", null: false
  end

end
