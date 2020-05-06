require "httparty"
require "json"

response = (HTTParty.get('http://reg.bom.gov.au/fwo/IDN60901/IDN60901.94768.json')).to_s

data = JSON.parse(response)

current = data["observations"]["data"][0]

arr = current["local_date_time_full"].split("")

date = [arr[6], arr[7], "/", arr[4], arr[5]].join("")

time = [arr[8], arr[9], arr[10], arr[11]].join("")

puts "The weather at #{current["name"]} on #{date} at #{time}:"
puts "Temperature of #{current["air_temp"].to_i} degrees celcius"
puts "Pressure of #{current["press"]} hpa"