require 'open-uri'
require 'nokogiri'

doc = Nokogiri.HTML(open('https://wiki.debian.org/DebianReleases'))

doc.xpath("//*[@id=\"Production_Releases\"]").each do |title|
  puts title.text
  end
  
doc.xpath('//*[@id="content"]/div[3]').each do |table|
  puts table.text
end