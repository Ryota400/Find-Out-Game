class GamesController < ApplicationController
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result(distinct: true).all.page(params[:page]).per(30)

  end


  def show
    if params[:id]
      url = "https://store.steampowered.com/api/appdetails?appids=#{params[:id]}&ja"
      uri = URI.parse(url)
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)
      @header = result[params[:id]]["data"]["header_image"]
      @name = result[params[:id]]["data"]["name"]
      @appid = result[params[:id]]["data"]["steam_appid"]
      @detail = result[params[:id]]["data"]["short_description"]
    end

  end

end
