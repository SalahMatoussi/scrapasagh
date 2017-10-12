require 'rubygems'
require 'open-uri'
require 'nokogiri'

stocks = {}

prices=[]


page_url = "https://coinmarketcap.com/all/views/all/"

page = Nokogiri::HTML(open(page_url))


prices=[]
price=page.css(".price")
price.each{|link| prices.push(link.text)}

#puts prices.length

names=[]
name=page.css("tbody tr td")[1].text[2]

binding.pry

#puts name.length

Stocks={}
