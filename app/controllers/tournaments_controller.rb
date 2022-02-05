class TournamentsController < ApplicationController

    def show
        @tournament = Tournament.find_by id:(params[:id])
    end

    def index
        # This is just going to exclude the ONE live tournament that has no results, due there being less than 4 fighters associated with it
        @pendingtournament = Tournament.last
        @tournaments = Tournament.all.includes(:results).where.not(results:{id:nil})
    end

end