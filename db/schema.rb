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

ActiveRecord::Schema.define(version: 2022_02_02_001545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nfts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mint_season"
    t.integer "mint_bracket"
    t.text "eye_colour"
    t.text "hair_style"
    t.text "hair_colour"
    t.text "skin_colour"
    t.text "shorts"
    t.text "facial_expression"
    t.text "body_type"
    t.text "handwear"
    t.text "background_colour"
    t.text "tattoos"
    t.integer "total_fights"
    t.integer "best_position"
    t.float "amount_won"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.integer "fights_won"
    t.integer "average_position"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
    t.float "eth_in_wallet"
    t.text "profile_image"
  end

end
