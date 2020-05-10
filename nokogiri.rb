require 'net/ftp'
require 'nokogiri'

# Log into BoM ftp server and download the XML file
# Using the ruby NET class for this
# ftp://ftp.bom.gov.au/anon/gen/fwo/IDN11050.xml

Net::FTP.open('ftp.bom.gov.au') do |ftp|
    puts "downloading files"
    ftp.login
    files = ftp.chdir('anon/gen/fwo')
    files = ftp.list('I*')
    @forecast = ftp.gettextfile('IDN11050.xml', nil)
    puts "download success" if @forecast != nil
end

# p @forecast
# Parse the information with nokogiri

forecast_xml = Nokogiri::XML(@forecast)

text = forecast_xml.xpath("//text")


for item in text
    puts "item is:"
    p item
end
# p forecast_xml.css('')

# product -> forecast -> area aac = "NSW_ME001" description = "Sydney"