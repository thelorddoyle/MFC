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

        # Just always sets up the first fight card
        self.nfts.each { |nft| @first_round_contenders.push(nft)}
        first_round_fight_card = @first_round_contenders.shuffle.each_slice(2).to_a

        # Create the loop that fights the fighters
        if first_round_fight_card.count == 2

            # loop through all of the fights this round
            first_round_fight_card.each do |match|
                winner = match.first.fight(match.second)
                winner.won_fights.last.update tournament_id: self.id, round_number: 1, total_prize_pool: (@prize_pool)
            end

            fight_1_winner = self.results[0].winner
            fight_2_winner = self.results[1].winner
                
            champion = fight_1_winner.fight(fight_2_winner)
            champion.won_fights.last.update tournament_id: Tournament.last.id, round_number: 2, total_prize_pool: (@prize_pool)
            runner_up = champion.won_fights.last.loser
            # I don't actually NEED to return this as I don't use it anywhere, but keeping it in for now, just incase.
            champion        

        end

        if first_round_fight_card.count == 8

            # first round
            simulate_round first_round_fight_card, 1, @second_round_contenders

            # second round

            # TODO: I could actually cut this top line and put it in to function, too.
            second_round_fight_card = @second_round_contenders.shuffle.each_slice(2).to_a
            simulate_round second_round_fight_card, 2, @semi_finalists

            # semi-finals
            semi_finals = @semi_finalists.shuffle.each_slice(2).to_a
            simulate_round semi_finals, 3, @finalists

            # final
            champion = @finalists[0].fight(@finalists[1])
            champion.won_fights.last.update tournament_id: self.id, round_number: 4, total_prize_pool: (@prize_pool)

            champion
            
        end

        if first_round_fight_card.count == 16

            simulate_round first_round_fight_card, 1, @second_round_contenders

            second_round_fight_card = @second_round_contenders.shuffle.each_slice(2).to_a
            simulate_round second_round_fight_card, 2, @third_round_contenders

            third_round_fight_card = @third_round_contenders.shuffle.each_slice(2).to_a
            simulate_round third_round_fight_card, 3, @semi_finalists

            semi_finals = @semi_finalists.shuffle.each_slice(2).to_a
            simulate_round semi_finals, 4, @finalists

            champion = @finalists[0].fight(@finalists[1])
            champion.won_fights.last.update tournament_id: self.id, round_number: 5, total_prize_pool: (@prize_pool)

            champion

        end

        # Regardless of the number of participants in the tournament, a new tournament still needs to be created for now.
        @new_tournament = Tournament.new
        @new_tournament.save

    end

end