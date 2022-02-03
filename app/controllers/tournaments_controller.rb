class TournamentsController < ApplicationController

    def show
        @tournament = Tournament.all[Tournament.all.count - 2]
    end

end