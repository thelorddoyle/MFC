class Result < ApplicationRecord

    # this will only work as long as the table row in results has an ID for an NFT that is called 'winner_id' and 'loser_id'
    belongs_to :winner, class_name: 'Nft', optional: true
    belongs_to :loser, class_name: 'Nft', optional: true
    belongs_to :tournament, optional: true

end
