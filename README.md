# README

CLI weather app, using data from the [Bureau of Meteorology](http://www.bom.gov.au) API.

This respository contains two programs. The first (weather.rb) pulls live data from the JSON feed from the Observatory Hill station in Sydney and displays the date and time of the observation (updated every 30 minutes) and the temperature and pressure.

The second is nokogiri.rb. Currently a work in progress, it downloads data from the FTP server using Ruby's default Net class, then parses and displays it using the gem 'nokogiri'. Currently a work in progress.    
