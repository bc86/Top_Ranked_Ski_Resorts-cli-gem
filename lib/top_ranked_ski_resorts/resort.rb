class TopRankedSkiResorts::Resort

	attr_accessor :rank, :place, :state, :airport, :score, :acreage, :summit_elevation, :vertical_drop, :lifts, :true_snowfall,
		:total_runs, :longest_run, :terrain_parks, :halfpipes, :protip

	@@all = []

	def self.all
		@@all
	end

	def save
		@@all << self
	end
end