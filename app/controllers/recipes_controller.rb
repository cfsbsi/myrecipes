class RecipesController < ApplicationController
	
	def index
		@recipes = Recipe.all
	end
	
	def show
		puts params[:id]
		@recipe = Recipe.find(params[:id])
	end
end