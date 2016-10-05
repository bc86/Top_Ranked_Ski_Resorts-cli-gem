class TopRankedSkiResorts::Resort

	attr_accessor :name

	@@all = []

	def self.new_from_index_page(resort)
		self.new(
			resort.css("td:first_child").text
			)
		binding.pry
	end

	def initialize(name)
		@name = name
		@@all << self
	end

end