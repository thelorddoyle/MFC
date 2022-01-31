class AddFightsWonToNfts < ActiveRecord::Migration[5.2]
  def change
    add_column :nfts, :fights_won, :integer
  end
end
