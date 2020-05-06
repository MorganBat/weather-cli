require "httparty"
require "json"

response = (HTTParty.get('http://reg.bom.gov.au/fwo/IDN60901/IDN60901.94768.json')).to_s

data = JSON.parse(response)

current = data["observations"]["data"][0]

p current["local_data_time_full"]

puts "The weather at #{current["name"]} on #{date} at #{time}:"
puts "Temperature of #{current["air_temp"].to_i} degrees celcius"
puts "Pressure of #{current["press"]} hpa"