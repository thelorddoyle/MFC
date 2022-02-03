class AddTournamentIdColumnToNftsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :nfts, :tournament_id, :integer
  end
end
