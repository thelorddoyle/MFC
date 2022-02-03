class AddTournamentIdToResultsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :tournament_id, :integer
  end
end
