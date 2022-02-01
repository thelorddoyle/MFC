class NftsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show, :whitepaper, :connect, :rankings, :home]

  def home
    @nfts = Nft.all
  end

  def whitepaper
  end

  def connect
  end

  def rankings
    @nfts = Nft.all
  end

  def new
    @nft = Nft.new
  end

  def create

    # nft = Nft.create nft_params
    # nft.user_id = @current_user.id
    # nft.save

    @nft = Nft.new nft_params()
    @nft.user_id = @current_user.id
    @nft.save

    if @nft.persisted? #saved
      redirect_to home_path
    else
      render :new
    end


  end

  def index
    @nfts = Nft.all
  end

  def show
    @nft = Nft.find params[:id]
  end

  def edit
    @nft = Nft.find params[:id]

    redirect_to rankings_path unless @nft.user_id == @current_user.id
  end

  def update

    @nft = Nft.find params[:id]

    # TODO: Ask Luke where @current_nft is 
    # if @nft.id != @current_nft.id
    #   redirect_to login_path
    #   return
    # end

    @nft.update nft_params
    
    if @nft.persisted?
      redirect_to nft_path
    else
      render :edit
    end
        
  end

  def mint
    @nft = Nft.find_by user_id: nil

    # redirect_to rankings_path unless @nft.user_id == @current_user.id

  end

  def delete
  end

  private

  def nft_params
    params.require(:nft).permit(:mint_season, :mint_bracket, :eye_colour, :hair_style, :hair_colour, :skin_colour, :shorts, :facial_expression, :body_type, :handwear, :background_colour, :tattoos, :total_fights, :best_position, :amount_won, :image, :fights_won, :average_position, :user_id )
  end

end
