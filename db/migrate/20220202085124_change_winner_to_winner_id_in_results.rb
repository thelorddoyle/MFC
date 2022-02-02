class ChangeWinnerToWinnerIdInResults < ActiveRecord::Migration[5.2]
  def change
    rename_column :results, :winner, :winner_id
  end
end
