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

ActiveRecord::Schema.define(version: 2020_08_06_111621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.boolean "selected", default: false
    t.bigint "user_id", null: false
    t.bigint "gig_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.string "phone_number"
    t.string "address"
    t.string "note"
    t.index ["gig_id"], name: "index_bids_on_gig_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "gigs", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "address"
    t.string "description"
    t.string "phone_number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.index ["user_id"], name: "index_gigs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "open_id"
  end

  add_foreign_key "bids", "gigs"
  add_foreign_key "bids", "users"
  add_foreign_key "gigs", "users"
end
