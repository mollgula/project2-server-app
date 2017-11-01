require 'nokogiri'
require 'open-uri'
require 'pry'

url = 'https://wiki.debian.org/DebianReleases'
html = open(url).read
doc = Nokogiri::HTML(html)

# 下の行をコメントアウトすると、pryが起動する
# binding.pry

# 例：h2要素のみを抜き出す
#doc.css('h2').each do |node|
  #puts node.text
#end

doc.xpath("//*[@id=\"Production_Releases\"]").each do |title|
 puts title.text
  end
  
doc.xpath('//*[@id="content"]/div[3]').each do |table|
  print table.text.ljust(15)
end