class Nft < ApplicationRecord

    belongs_to :user, optional: true
    has_many :won_fights, class_name: 'Result', foreign_key: 'winner_id'
    has_many :lost_fights, class_name: 'Result', foreign_key: 'loser_id'

    def fight(opponent)
        # chooses winner randomly 
        winner = rand > 0.5 ? opponent : self
        loser = winner == self ? opponent : self

        # sort the winner NFT out first
        new_total_fights = (winner.total_fights.to_i + 1)
        new_amount_won = (winner.amount_won.to_f + 0.2)
        new_fights_won = (winner.fights_won.to_i + 1)
        winner.update total_fights: new_total_fights
        winner.update amount_won: new_amount_won
        winner.update fights_won: new_fights_won

        # sort the winner NFT owner out
        winners_eth_in_wallet = (winner.user.eth_in_wallet.to_f + 0.2)
        winner.user.update eth_in_wallet: winners_eth_in_wallet
        # raise 'hell'

        # sort the loser NFT out
        losers_eth_in_wallet = (loser.user.eth_in_wallet.to_f - 0.2)
        loser.user.update eth_in_wallet: losers_eth_in_wallet

        # update results

        # TODO: THIS IS WHERE I WILL MANIPULATE THE RESULTS TABLE


        winner
    end

    def wins
        win_amount = Result.where winner: self.id
        win_amount.count
    end

    def losses
        loss_amount = Result.where loser: self.id
        loss_amount.count
    end

end
