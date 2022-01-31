class SessionController < ApplicationController

  def new
  end

  def create
    # find the email address entered is actually in the DB
    #use find_by as it returns the object
    user = User.find_by email: params[:email]
    
    # check if we found a user with that email
    # AND if we did find a user is the password the correct password for that user
    if user.present? && user.authenticate(params[:password])
      #credentials correct - successful login

      session[:user_id] = user.id

      redirect_to home_path

    elsif user.present?
      #oassword incorrect

      # flash is a bit like session in that it is remembered from one page request to the next, but instead of having persistency it only lasts until the VERY NEXT page load. It then self-destructs. Useful for error or status messages.

      flash[:error] = 'Inavlid password.'

      redirect_to login_path

    else
      #user email incorrect
      
      flash[:error] = 'Inavlid email.'
      
      redirect_to login_path

    end

  end

  def destroy

    session[:user_id] = nil
    redirect_to login_path
    
  end

end