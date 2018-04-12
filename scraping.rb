require 'nokogiri'
require 'open-uri'

#  lista de todos los articulos de hackernews
html = open('https://news.ycombinator.com/')
doc = Nokogiri::HTML(html)
#  buscamos todos lo elementos de clase title
doc.search('.title a').map do |element|
    puts element.inner_text
end
