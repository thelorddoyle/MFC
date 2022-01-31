class DropTableWallets < ActiveRecord::Migration[5.2]
  def change
    drop_table :wallets
  end
end
