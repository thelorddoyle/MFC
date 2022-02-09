ActiveRecord::Schema.define(version: 2022_02_07_082830) do

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

  create_table "nfts_tournaments", force: :cascade do |t|
    t.integer "nft_id"
    t.integer "tournament_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "winner_id"
    t.integer "loser_id"
    t.float "eth_bet"
    t.float "total_prize_pool"
    t.integer "tournament_id"
    t.integer "round_number"
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tournament_size"
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
