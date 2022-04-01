class GamesController < ApplicationController
  def index
    @games = [
      1245620,
      1172470,
      1446780
    ]

    @games.each do |game|
      url = "https://store.steampowered.com/api/appdetails?appids=#{game}"
      uri = URI.parse(url)
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)
      @name = result["#{game.to_s}"]["data"]["name"]
      @steam_appid = result["#{game.to_s}"]["data"]["steam_appid"]
      puts @names
    end
  end
end
