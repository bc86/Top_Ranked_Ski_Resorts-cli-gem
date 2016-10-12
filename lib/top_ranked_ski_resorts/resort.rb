class TopRankedSkiResorts::Resort

	attr_accessor :rank, :place, :state, :true_snowfall, :acreage, :vertical_drop, :summit_elevation,
		:lifts, :score, :save, :total_runs, :longest_run, :terrain_parks, :halfpipes, :airport, :protip

	#def initialize#(rank, place, state, true_snowfall, acreage, vertical_drop, summit_elevation, lifts, score, save,
		#total_runs, longest_run, terrain_parks, halfpipes, airport)
	#	@rank 
	#	@place 
	#	@state 
	#	@true_snowfall 
	#	@acreage
	#	@vertical_drop 
	#	@summit_elevation
	#	@lifts
	#	@score 
	#	@save
	#	@total_runs 
	#	@longest_run 
	#	@terrain_parks
	#	@halfpipes
	#	@airport
	#	@@all << self
	#end

	@@all = []

	def self.all
		@@all
	end

	def save
		@@all << self
	end
end