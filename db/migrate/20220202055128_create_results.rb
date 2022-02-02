class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :winner
      t.string :loser
      t.float :amount_bet
      t.float :total_prize_pool

      t.timestamps
    end
  end
end
