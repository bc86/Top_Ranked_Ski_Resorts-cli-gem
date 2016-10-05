class TopRankedSkiResorts::Scraper

	#Primary Page to scrape
	def primary_page
		Nokogiri::HTML(open("https://www.zrankings.com"))
	end

	def scrape_top_rated_resorts
		#select rows that will be iterated through
		self.primary_page.css("table.rank1 tbody tr")
	end

	def make_resorts
		#iterate through the list of resorts to be used by resort.rb
		scrape_top_rated_resorts.each do |resort|
			TopRankedSkiResorts::Resort.new_from_index_page(resort)
		end
	end
end