class Results < ActiveRecord::Migration[5.2]
  def change
      create_table :results do |t|
        t.integer :winner_id
        t.integer :loser_id
        t.float :eth_bet
        t.float :total_prize_pool  
      end
  end
end
