class AddAveragePositionToNfts < ActiveRecord::Migration[5.2]
  def change
    add_column :nfts, :average_position, :integer
  end
end
