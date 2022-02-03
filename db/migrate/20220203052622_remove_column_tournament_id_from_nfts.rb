class RemoveColumnTournamentIdFromNfts < ActiveRecord::Migration[5.2]
  def change
    remove_column :nfts, :tournament_id
  end
end
