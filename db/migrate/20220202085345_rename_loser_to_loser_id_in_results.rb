class RenameLoserToLoserIdInResults < ActiveRecord::Migration[5.2]
  def change
    rename_column :results, :loser, :loser_id
  end
end
