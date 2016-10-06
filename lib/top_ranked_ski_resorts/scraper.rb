class TopRankedSkiResorts::Scraper
	def initialize(url = nil)
		@url = url
	end

	#not sure yet why this may or may not be needed
	def scrape_article
		@doc = Nokogiri::HTML(open(@url))
		@doc.search("table.rank1").text
	end

	#Primary Page to scrape
	def primary_page
		@doc = Nokogiri::HTML(open("https://www.zrankings.com"))
		@doc.search("tbody tr").collect do |tbody_li|
			resort = TopRankedSkiResorts::Resort.new
			
			#resort.rank = tbody_li.search("td:first-of-type").text,
			resort.place = tbody_li.search("td.name-rank a").text
			resort.state = tbody_li.search("td.name-rank span").text
			resort.rank = tbody_li.search("td:first-of-type").text.to_i

			resort.save
		end
	end
	binding.pry
end