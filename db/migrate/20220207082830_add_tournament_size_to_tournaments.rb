class AddTournamentSizeToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :tournament_size, :integer
  end
end
