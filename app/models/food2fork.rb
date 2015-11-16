class Food2Fork
  include HTTParty

	base_uri 'food2fork.com/api'
	default_params key: ENV['FOOD2FORK_KEY']
	format :json

	def self.for keyword
		get("/search", query: {q: keyword, key: '1234'})["recipes"]
	end
	
end