class AddColumnRoundNumberToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :round_number, :integer
  end
end
