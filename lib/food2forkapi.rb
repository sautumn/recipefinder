class Food2Fork
  include HTTParty
	debug_output $stdout
	base_uri 'http://www.food2fork.com/api'
	default_params key: ENV['FOOD2FORK_KEY']
	# default_params key: "ccd18dd67540a62dcc44ad8add31d846"
	format :json

	def self.for term
		get("/search", query: {q: term})["recipes"]
	end
	
end