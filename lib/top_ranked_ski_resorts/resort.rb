class TopRankedSkiResorts::Resort

	attr_accessor :place, :state, :rank

	@@all = []

	def self.all
		@@all
	end

	def save
		@@all << self
	end
end