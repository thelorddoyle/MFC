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

  def fight
    @nft = Nft.find params[:id]

    eth_range = 0.2..1000000
    opponent_list = Nft.joins(:user).where(users: {eth_in_wallet: eth_range})
    #had to add this in to only keep others from foghting
    opponent_list_final = opponent_list.where.not(user_id: @current_user.id)

    @opponent = (opponent_list_final).sample  
    @winner = @nft.fight(@opponent)
  end

  def create
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
    # raise 'hell'
    @results = Result.where(winner:@nft.id).or(Result.where(loser:@nft.id))
    @wins = @nft.wins
    @losses = @nft.losses
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
    if @current_user.eth_in_wallet >= 0.8

      eth_to_take_from = @current_user.eth_in_wallet.to_f
      new_eth_total = (eth_to_take_from.to_f - 0.8)

      @current_user.update eth_in_wallet: new_eth_total
      @nft.update nft_params

    end
    
    if @nft.persisted?
      redirect_to nft_path
    else
      render :edit
    end
        
  end

  def mint
    @nft = Nft.find_by user_id: nil
    # redirect_to rankings_path unless @nft.user_id == @current_user.id

    @total_nft_count = Nft.all.count
    @nfts_unowned = Nft.all.where(user_id: nil).count

  end

  def tournament
    @nft = @current_user.nfts.sample

    if Tournament.last.nfts.include? @nft
      else
      Tournament.last.nfts << @nft
    end

    if Tournament.last.nfts.count >= 4
      @live_tournament = Tournament.last
      @winner = @live_tournament.play
      redirect_to tournament_path(@live_tournament.id) and return
    else
      redirect_to tournaments_index_path and return
    end
    
  end


  private

  def nft_params
    params.require(:nft).permit(:mint_season, :mint_bracket, :eye_colour, :hair_style, :hair_colour, :skin_colour, :shorts, :facial_expression, :body_type, :handwear, :background_colour, :tattoos, :total_fights, :best_position, :amount_won, :image, :fights_won, :average_position, :user_id )
  end

end
