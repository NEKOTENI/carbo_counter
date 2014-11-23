class HomeController < ApplicationController
	def index
		@hogr = params
		@foods = Food.where(name: params["food_name"] )
		@chosen_food = @foods[0]
		@calc = @chosen_food.carb / 100.0 * params["amout_g"].to_i
	end

	def show
		@param = param
	end
end
