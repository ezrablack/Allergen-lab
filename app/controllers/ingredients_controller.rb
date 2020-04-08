class IngredientsController < ApplicationController

    def index
        @allergen = Allergen.all
        @ingredients = Ingredient.all
    end 
    
    def show
        @ingredient = Ingredient.find(params[:id])
    end 
end