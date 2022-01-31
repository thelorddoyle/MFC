class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new user_params
    @user.save

    if @user.persisted? #saved
      session[:user_id] = @user.id
      redirect_to rankings_path
    else
      render :new
    end

  end

  def index
  end

  def show
  end

  def edit
    @user = User.find params[:id]

    redirect_to rankings_path unless @user.id == @current_user.id
  end

  def update

    @user = User.find params[:id]

    if @user.id != @current_user.id
      redirect_to login_path
      return
    end
    
    if @user.update user_params
      redirect_to user_path
    else
      render :edit
    end

  end

  def delete
  end

  # private methods in a class are only visible to other methods in the class
  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
