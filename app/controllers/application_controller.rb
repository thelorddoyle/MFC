class ApplicationController < ActionController::Base

    before_action :fetch_user

    def fetch_user

        #check if user id in session hash is set and see if it is a user in our user table
        # if it is, get row object and save in to @current_user which every merthod or any action can access
        # if ID is not a current ID consider it invalid and delete session (preventing weird errors for stale or expired user ids when re-seeding)

        if session[:user_id].present?
            @current_user = User.find_by id:session[:user_id]
        end

        # if we did get nil from the above query then delete session since ID is invalid
        session[:user_id] = nil unless @current_user.present?

    end #fetch user

    def check_if_logged_in
        # If the current request (any action of a controller) is coming from logged in user, allow it. If not - tell it nah mate.

        unless @current_user.present?
            redirect_to login_path #controller action does not run
            flash[:error] = 'You must be logged in'
        end #if current user is not present?

    end # end of check if logged in


end
