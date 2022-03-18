# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  puts apps["appid"]
end
