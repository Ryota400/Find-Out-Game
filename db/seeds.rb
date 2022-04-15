require 'net/http'
require 'uri'
require 'json'
uri = URI.parse('https://api.steampowered.com/ISteamApps/GetAppList/v2/')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
game_data = result["applist"]["apps"]
game_data.each do |apps|
  Game.create!(
    { appid: apps["appid"].to_i , name: apps["name"]}
  )
  puts apps["name"]
end
