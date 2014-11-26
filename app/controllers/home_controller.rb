class HomeController < ApplicationController
	def index
		@hogr = params
		@foods = {}
		@calc_total = 0
		@foods_for_select = Food.all.map do |f|
			[f.name, f.id]
		end
		@foods_for_select.insert(0, ["選択して下さい", nil])

		10.times.each do |i|
			food = Food.where(id: params["food_id_#{i}"]).first
			if food
				gram = params["amount_g_#{i}"].to_i
				carb = food.carb / 100.0 * gram
				@calc_total += carb
				@foods[i] = { food: food, gram: gram, carb: carb }
			end
		end
	end


	def show
		@param = param
	end
end
