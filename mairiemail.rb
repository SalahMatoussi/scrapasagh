require 'rubygems'
require 'open-uri'
require 'nokogiri'


def get_the_email_of_a_townhal_from_its_webpage

	page_url = "http://annuaire-des-mairies.com/95/vaureal.html"

	page = Nokogiri::HTML(open(page_url))

	mail=page.css("p:contains('@')").text

	mairie=page.css("strong a").text

	puts ("La ville de #{mairie} a pour adresse mail :#{mail}.")

end

get_the_email_of_a_townhal_from_its_webpage
