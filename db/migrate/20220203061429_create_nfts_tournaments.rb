class CreateNftsTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :nfts_tournaments do |t|
      t.integer :nft_id
      t.integer :tournament_id
    end
  end
end
