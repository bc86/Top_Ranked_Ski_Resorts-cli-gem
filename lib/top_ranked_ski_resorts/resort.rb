class TopRankedSkiResorts::Resort

	attr_accessor :rank, :name, :state

	@@all = []
	#def self.new_from_index_page(resort)
	#	self.new(
	#		resort.css("td:first_child").text,
	#		#might have to access attribute and href
	#		resort.css("td.name-rank a").text,
	#		resort.css("td.name-rank < span.desktop-520").text
	#		)
	#end
	#binding.pry

	#def initialize(rank, name, state)
	#	@rank = rank
	#	@name = name
	#	@state = state
	#	@@all << self
	#end

	def save
		@@all << self
	end

	def self.all
		@@all
	end
binding.pry
end