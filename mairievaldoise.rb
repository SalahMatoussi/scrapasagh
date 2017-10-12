require 'rubygems'
require 'open-uri'
require 'nokogiri'

def get_all_the_urls_of_val_doise_townhalls()
	doc = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
	villeurl = []

	doc.xpath('//a[@class="lientxt"]').each do |node|
		 villeurl<<node.text
	end
		puts  villeurl.length
	     get_the_email_of_a_townhal_from_its_webpage
end

def get_the_email_of_a_townhal_from_its_webpage(villes)

	villes.each do |ville|
		puts ville
		page_url = "http://annuaire-des-mairies.com/95/"+ville+".html"
		page = Nokogiri::HTML(open(page_url))
		puts page.css('p:contains("@")').text

end
end
get_all_the_urls_of_val_doise_townhalls()