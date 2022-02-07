class Tournament < ApplicationRecord
    has_many :results
    has_and_belongs_to_many :nfts, optional: true

    def play

        # VARIABLES REQUIRED
        @prize_pool = self.nfts.count * 0.2
        @first_round_contenders = []
        @second_round_contenders = []
        @third_round_contenders = []
        @semi_finalists = []
        @finalists = []

        def simulate_round(contender_array, round_number, winners_array)
            contender_array.each do |match|
                winner = match.first.fight(match.second)
                winner.won_fights.last.update tournament_id: self.id, round_number: round_number, total_prize_pool: (@prize_pool)
                winners_array.push(winner)
            end
        end

        # Sets up the first fight card
        self.nfts.each { |nft| @first_round_contenders.push(nft)}

        if @first_round_contenders.count == 4

            first_round_fight_card = @first_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(first_round_fight_card, 1, @finalists)

            champion = @finalists[0].fight(@finalists[1])
            champion.won_fights.last.update tournament_id: self.id, round_number: 2, total_prize_pool: (@prize_pool)

            champion        

        end

        if @first_round_contenders.count == 16

            first_round_fight_card = @first_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(first_round_fight_card, 1, @second_round_contenders)

            second_round_fight_card = @second_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(second_round_fight_card, 2, @semi_finalists)

            semi_finals = @semi_finalists.shuffle.each_slice(2).to_a
            simulate_round(semi_finals, 3, @finalists)

            champion = @finalists[0].fight(@finalists[1])
            champion.won_fights.last.update tournament_id: self.id, round_number: 4, total_prize_pool: (@prize_pool)

            champion
            
        end

        if @first_round_contenders.count == 32

            first_round_fight_card = @first_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(first_round_fight_card, 1, @second_round_contenders)

            second_round_fight_card = @second_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(second_round_fight_card, 2, @third_round_contenders)

            third_round_fight_card = @third_round_contenders.shuffle.each_slice(2).to_a
            simulate_round(third_round_fight_card, 3, @semi_finalists)

            semi_finals = @semi_finalists.shuffle.each_slice(2).to_a
            simulate_round(semi_finals, 4, @finalists)

            champion = @finalists[0].fight(@finalists[1])
            champion.won_fights.last.update tournament_id: self.id, round_number: 5, total_prize_pool: (@prize_pool)

            champion

        end

    end

end