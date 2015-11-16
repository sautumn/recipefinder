require 'food2forkapi'

class IndexController < ApplicationController
	def recipe
		@search_term = params[:looking_for] || 'cheese'
		@recipe_list = Food2Fork.for(@search_term)
	end

end


