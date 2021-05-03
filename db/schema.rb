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

ActiveRecord::Schema.define(version: 2021_05_03_032939) do

  create_table "cards", force: :cascade do |t|
    t.string "card_name"
    t.string "card_number"
    t.decimal "card_balance"
    t.datetime "card_balance_date"
    t.decimal "card_min_payment"
    t.decimal "card_apr"
    t.string "card_priority"
    t.string "card_type"
    t.string "card_provider"
    t.datetime "card_expiry_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
