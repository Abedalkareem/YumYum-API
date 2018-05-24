class RecipesController < ApplicationController

	def index 
		@recipes = Recipe.all
		json_response  :recipes => @recipes.as_json(include:[:steps,:ingredients])
	end

	def create

		@recipe = Recipe.new(recipes_params)
		if @recipe.save 
		  json_response @recipe.as_json(include:[:steps,:ingredients]), :created
		else
		  json_response nil, :internal_server_error 
		end
	end


	private 

	def recipes_params 
		params.require(:recipe).permit(:name, :description, :duration, :image, steps_attributes: [ :order, :description, :image ], ingredients_attributes: [:description])
	end


end
