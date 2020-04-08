class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end 

    def show
        @recipe = Recipe.find(params[:id])
    end 

    def new
        @ingredients = Ingredient.all
        @recipe = Recipe.new()
    end 

    def create
        @recipe = Recipe.create(name: params[:recipe][:name], description: params[:recipe][:description], user_id: params[:recipe][:user_id], ingredient_ids: params[:recipe][:ingredient_ids])
        redirect_to '/recipes'
    end

end 