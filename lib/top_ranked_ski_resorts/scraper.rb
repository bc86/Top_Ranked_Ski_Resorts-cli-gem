class TopRankedSkiResorts::Scraper
	def initialize(url = nil)
		@url = url
	end

	attr_accessor :hrefs, :resort, :doc, :remote_url, :second

	#not sure yet why this may or may not be needed
	#def scrape_article
	#	@doc = Nokogiri::HTML(open(@url))
	#	@doc.search("table.rank1").text
	#end

	BASE_ZRANKINGS_URL = "https://zrankings.com"
	#Primary Page to scrape
	#def primary_page
	#	@doc = Nokogiri::HTML(open("https://www.zrankings.com"))
	#	@doc.search("tbody tr").collect do |tbody_li|
	#		resort = TopRankedSkiResorts::Resort.new
	#		
	#		resort.place = tbody_li.search("td.name-rank a").text
	#		resort.state = tbody_li.search("td.name-rank span").text
	#		resort.rank = tbody_li.search("td:first-of-type").text.to_i
#
	#		resort.save
	#	end
	#end

	def primary_page
		doc = Nokogiri::HTML(open(BASE_ZRANKINGS_URL))
		doc.search("tbody tr").map do |tbody_tr|
			@resort = TopRankedSkiResorts::Resort.new
			
			resort.rank = tbody_tr.search("td:first-of-type").text.to_i
			resort.place = tbody_tr.search("td.name-rank a").text
			resort.state = tbody_tr.search("td.name-rank span").text
			#resort.rank = tbody_tr.search("td:first-of-type").text.to_i
			resort.save
		end
	end

	def secondary_page
		doc = Nokogiri::HTML(open(BASE_ZRANKINGS_URL))
		main = doc.search("tbody tr").each do |row|
			hrefs = row.search("td a").map { |a|
				a['href'] if a['href'] =~ /^\/ski-resorts\// }.compact.uniq

				hrefs.each do |href|
    				@remote_url = BASE_ZRANKINGS_URL + href
    				#puts remote_url   
    				@resort = TopRankedSkiResorts::Resort.new
    				@second = Nokogiri::HTML(open(@remote_url)) 
    				resort.total_runs = second.search("div.side-stats-2 ul li:nth-child(2) h4 span").text.to_i
    				resort.save
    			end
    		end
    		binding.pry
	end

	#def secondary_page
	#	@doc2 = Nokogiri::HTML(open("https://www.zrankings.com"))
	#	@doc2.search("tbody tr")[1..-2].each do |row|
	#		hrefs = @doc2.css("td a").collect { |a|
	#			a['href'] if a['href'] =~ /^\/ski-resorts\//}.compact.uniq

	#			hrefs.each do |href|
   # 				remote_url = BASE_ZRANKINGS_URL + href
    #				puts remote_url    
    #			end
    #		end
	#end
end