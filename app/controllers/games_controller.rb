class GamesController < ApplicationController
  def index
    require 'net/http'
    require 'uri'
    require 'json'

    @games = Game.pluck(:appid)
    url = "https://store.steampowered.com/api/appdetails?appids=#{@games}"
    uri = URI.parse(url)
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)



    @name = result[@games]["data"]["name"].to_s
    @steam_appid = result[@games]["data"]["steam_appid"]
    @header = result[@games]["data"]["header_image"].to_s



  end
end
