require 'net/ftp'
require 'nokogiri'

# Log into BoM ftp server and download the XML file
# Using the ruby NET class for this
# ftp://ftp.bom.gov.au/anon/gen/fwo/IDN11050.xml

forecast = Net::FTP.open('ftp.bom.gov.au') do |ftp|
    ftp.login
    files = ftp.chdir('anon/gen/fwo')
    files = ftp.list('I*')
    ftp.getbinaryfile('IDN11050.xml', 1024)
end

p forecast