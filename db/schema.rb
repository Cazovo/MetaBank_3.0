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

ActiveRecord::Schema.define(version: 2021_01_12_184959) do

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created", null: false
    t.string "type"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "account_id"
    t.integer "amount"
    t.string "notes"
    t.datetime "date", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "city"
    t.integer "zip_code"
    t.string "number"
    t.datetime "birth_date"
    t.string "gender"
    t.string "salary"
    t.string "occupation"
    t.datetime "updated_at", null: false
  end

end
