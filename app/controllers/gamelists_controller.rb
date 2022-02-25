class GamelistsController < ApplicationController

  def index
    @gamelists = Gamelist.all.includes(:user).order(created_at: :desc)
  end

  def new
    @gamelist = gamelist.new
  end

  def create
    @gamelist = current_user.gamelists.build(gamelist_params)
    if @gamelist.save
      @client.update("例）投稿しました！（ここにTwitterにツイートされる内容を書き込む）")
      redirect_to gamelists_path, :success: t('defaults.message.created', item: Gamelist.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Gamelist.model_name.human)
      render :new
    end
  end

  def show
    @gamelist = Gamelist.find(params[:id])
  end

  private

  def gamelist_params
    params.require(:board).permit(:title, :body)
  end

  def twitter_cilent
    @client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
    config.access_token = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end

end
