class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new user_params

    if params[:user][:profile_image].present?
        # Forward the uploaded image on to Cloudinary (using the gem):
        response = Cloudinary::Uploader.upload params[:user][:profile_image]
        p response  # so we can see what the response looks like
        @user.profile_image = response['public_id']
    end  # upload check

    @user.save

    if @user.persisted? #saved
      session[:user_id] = @user.id
      redirect_to user_path(session[:user_id])
    else
      render :new
    end

    

  end

  def index
  end

  def show
    @user = User.find params[:id]
    @tournament = Tournament.last
    @most_recent_tournament = Tournament.all.includes(:results).where.not(results:{id:nil}).last
  end

  def edit
    @user = User.find params[:id]

    redirect_to rankings_path unless @user.id == @current_user.id
  end

  def update

    @user = User.find params[:id]


    if params[:user][:profile_image].present?
        # Forward the uploaded image on to Cloudinary (using the gem):
        response = Cloudinary::Uploader.upload params[:user][:profile_image]
        p response  # so we can see what the response looks like
        @user.profile_image = response['public_id']
    end  # upload check

    if @user.id != @current_user.id
      redirect_to login_path
      return
    end

    eth_to_add = user_params[:eth_in_wallet].to_f
    new_eth_total = (eth_to_add + @user.eth_in_wallet.to_f)
    
    if @user.update user_params
      @user.update eth_in_wallet: new_eth_total
      redirect_to user_path
    else
      render :edit
    end

  end

  def addfunds
    @user = User.find params[:id]

    redirect_to rankings_path unless @user.id == @current_user.id
  end

  def delete
  end

  # private methods in a class are only visible to other methods in the class
  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :eth_in_wallet )
  end

end
