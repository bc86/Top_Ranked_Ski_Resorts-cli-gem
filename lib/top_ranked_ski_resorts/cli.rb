class TopRankedSkiResorts::CLI

	def call
		puts 
		puts
		puts "                                           *"
		puts "                                          * *"
		puts "                                 *       *   *"
		puts "                                * *     *     *"
		puts "                               *   *   *       *"
		puts "                              *     * *         *"
		puts "                           * *       *           * *"
		puts "                          * *         *           * *"
		puts "                         *   *         *         *   *"
		puts "                        *     *         *       *     *"
		puts
		puts "********************  Best Ski Resorts in North America  ********************"
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
			puts
			puts "Please select number of the resort you would like to learn more about"
			puts
			puts "Resort Selection: #{input = gets.strip}"

			if input.to_i-1 <= TopRankedSkiResorts::Resort.all.size
				resort = TopRankedSkiResorts::Resort.all[input.to_i-1]
				#puts
				puts "Name:  #{resort.place}"
				puts "State:  #{resort.state}"
				puts 
				puts "==================== Details ===================="
				puts
				puts "Acreage:  #{resort.acreage}"
				puts "Vertical Drop:  #{resort.vertical_drop}"
				puts "Total Runs:  #{resort.total_runs}"
				puts "Longest Run:  #{resort.longest_run}"
				puts "Nearest Airport:  #{resort.airport}"
				puts
				puts "==================== Quick Description ===================="
				puts
				puts "#{resort.protip.gsub(/\s+/, " ")}"
			end
		end
	end
end