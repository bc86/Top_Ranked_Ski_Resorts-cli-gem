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
		@doc.search("tbody tr").each do |tbody_li|
			resort = TopRankedSkiResorts::Resort.new
			
			resort.rank = tbody_li.search("td:first-of-type").text, 
			resort.name = tbody_li.search("td.name-rank a").text,
			resort.state = tbody_li.search("td.name-rank span").text

			resort.save
		end
	end
	binding.pry

	#def scrape_top_rated_resorts
		#select rows that will be iterated through
	#	self.primary_page.css("table.rank1 tbody tr")
	#end

	#def make_resorts
		#iterate through the list of resorts to be used by resort.rb
	#	scrape_top_rated_resorts.each do |resort|
	#		TopRankedSkiResorts::Resort.new_from_index_page(resort)
	#	end
	#end
	
end