class GamelistsController < ApplicationController
  before_action :twitter_client, only: [:create]

  def index
    @gamelists = Gamelist.all.includes(:user).order(created_at: :desc)
  end

  def new
    @gamelist = Gamelist.new
  end

  def create
    @gamelist = current_user.gamelists.build(gamelist_params)
    if @gamelist.save
      @client.update("#{@gamelist.title} #{gamelists_url(@gamelist.id)}\r")
      redirect_to gamelists_path, success: t('defaults.message.created', item: Gamelist.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Gamelist.model_name.human)
      render :new
    end
  end

  def show
    @gamelist = Gamelist.find(params[:id])
  end

  def edit
    @gamelist = current_user.gamelists.find(params[:id])
  end

  def update
    @gamelist = current_user.gamelists.find(params[:id])
    if @gamelist.update(gamelist_params)
      redirect_to @gamelist, success: t('defaults.message.updated', item: Gamelist.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Gamelist.model_name.human)
      render :edit
    end
  end

  def destroy
    @gamelist =current_user.gamelists.find(params[:id])
    @gamelist.destroy!
    redirect_to gamelists_path, success: t('defaults.message.deleted', item: Gamelist.model_name.human)
  end

  private

  def gamelist_params
    params.require(:gamelist).permit(:title, :body)
  end

  def twitter_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_API_KEY']
      config.consumer_secret = ENV['TWITTER_API_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end
end
