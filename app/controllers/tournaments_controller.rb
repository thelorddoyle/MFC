class TournamentsController < ApplicationController

    def show
        @tournament = Tournament.find_by id:(params[:id])
    end

    def new 
        @tournament = Tournament.new
    end

    def create 

        @tournament = Tournament.new
        # @tournament = Tournament.new(tournament_params)

        if @tournament.save
            redirect_to home_path
        else
            render 'new'
        end

    end

    def index

        # This is just going to exclude the ONE live tournament that has no results, due there being less than 4 fighters associated with it
        @tournaments = Tournament.all.includes(:results).where.not(results:{id:nil})
        
        @pendingtournament = Tournament.last
    
    end

    # private

    # def tournament_params
    #     params.require(:tournament).permit(:id)# here go you parameters for an article
    # end

end