class CreateNfts < ActiveRecord::Migration[5.2]
  def change
    create_table :nfts do |t|
      t.integer :wallet_id
      t.integer :mint_season
      t.integer :mint_bracket
      t.text :eye_colour
      t.text :hair_style
      t.text :hair_colour
      t.text :skin_colour
      t.text :shorts
      t.text :facial_expression
      t.text :body_type
      t.text :handwear
      t.text :background_colour
      t.text :tattoos
      t.integer :total_fights
      t.integer :best_position
      t.float :amount_won

      t.timestamps
    end
  end
end
