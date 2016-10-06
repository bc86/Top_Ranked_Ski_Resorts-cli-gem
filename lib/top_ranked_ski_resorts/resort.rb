class TopRankedSkiResorts::Resort

	attr_accessor :place, :state, :rank

	@@all = []

	#def initialize(place, state, rank)
		#@place = place
		#@state = state
		#@rank = rank
	#end

	#def self.new_from_index_page(resort)
	#	self.new(
	#		resort.css("td:first_child").text,
	#		#might have to access attribute and href
	#		resort.css("td.name-rank a").text,
	#		resort.css("td.name-rank < span.desktop-520").text
	#		)
	#end
	#binding.pry


	def save
		@@all << self
	end

	def self.all
		@@all
	end

	puts self.all
binding.pry
end