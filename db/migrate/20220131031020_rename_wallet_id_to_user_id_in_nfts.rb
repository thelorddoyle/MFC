class RenameWalletIdToUserIdInNfts < ActiveRecord::Migration[5.2]
  def change
    rename_column :nfts, :wallet_id, :user_id
  end
end