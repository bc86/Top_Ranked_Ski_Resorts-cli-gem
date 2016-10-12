class TopRankedSkiResorts::CLI

	def call
		mountain
		puts "********************  Best Ski Resorts in North America  ********************"
		TopRankedSkiResorts::Scraper.new.primary_page
		list_resorts
		menu
	end

	def mountain
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
	end

	def list_resorts
		TopRankedSkiResorts::Resort.all.each_with_index { |resort, i| puts "#{i+1} #{resort.place}" }
	end

	def menu
		input = ""
		while input != "exit"
			puts
			puts
			puts 
			puts "Please select number of the resort you would like more information about or type 'exit' to leave"
			
			input = gets.strip.downcase
			if input == "exit"
				puts 
				puts
				puts "**thank you for checking out top_ranked_ski_resorts gem now go hit the slopes**"
				break
			end

			if input.to_i-1 <= TopRankedSkiResorts::Resort.all.size
				resort = TopRankedSkiResorts::Resort.all[input.to_i-1]
				puts
				puts "Name:  #{resort.place}"
				puts "State:  #{resort.state}"
				puts "Nearest Airport: #{resort.airport}"
				puts "PAF - Pure Awesomeness Factor Score: #{resort.score}"
				puts 
				puts "==================== Resort Details ===================="
				puts
				puts "Acreage: #{resort.acreage}"
				puts "Summit Elevation: #{resort.summit_elevation}"
				puts "Vertical Drop:  #{resort.vertical_drop}"
				puts "Number of Lifts: #{resort.lifts}"
				puts "Snowfall: #{resort.true_snowfall}"
				puts "Total Runs:  #{resort.total_runs}"
				puts "Longest Run:  #{resort.longest_run}"
				puts
				puts "==================== Trail Details ===================="
				puts
				puts "Total Runs: #{resort.total_runs}"
				puts "Longest Run: #{resort.longest_run}"
				puts "Number of Terrain Parks: #{resort.terrain_parks}"
				puts "Number of Halfpipes: #{resort.halfpipes}"
				puts 
				puts "==================== Quick Description ===================="
				puts
				puts "#{resort.protip.gsub(/\s+/, " ")}"
			end
		end
	end
end