class AddEthInWalletToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :eth_in_wallet, :float
  end
end
