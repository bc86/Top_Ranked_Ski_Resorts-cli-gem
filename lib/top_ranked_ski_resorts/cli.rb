class TopRankedSkiResorts::CLI

	def call
		puts "Best Ski Resorts in North America"
		TopRankedSkiResorts::Scraper.new.primary_page
		list_resorts
		menu
	end

	def list_resorts
		TopRankedSkiResorts::Resort.all.each_with_index do |resort, i|
			puts "#{i+1} #{resort.place}"
		end
	end

	def menu
		input = ""
		while input != "exit"
			puts "Please select number of the resort you would like to learn more about"
			input = gets.strip

			if input.to_i-1 <= TopRankedSkiResorts::Resort.all.size
				resort = TopRankedSkiResorts::Resort.all[input.to_i-1]
				puts
				#puts resort.rank
				puts "Name: #{resort.place}"
				puts "State: #{resort.state}"
				puts "huh #{resort.total_runs}"
			end
		end
	end
end