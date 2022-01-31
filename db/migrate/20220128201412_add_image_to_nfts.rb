class AddImageToNfts < ActiveRecord::Migration[5.2]
  def change
    add_column :nfts, :image, :text
  end
end
