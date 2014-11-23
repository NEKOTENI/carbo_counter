class HomeController < ApplicationController
	def index
		@hogr = params
		@foods1 = Food.where(name: params["food_name_1"] )
		if @foods1.present?
		  @chosen_food1 = @foods1[0]
		  @calc1 = @chosen_food1.carb / 100.0 * params["amout_g_1"].to_i
		end
		@foods2 = Food.where(name: params["food_name_2"] )
		if @foods2.present?
		  @chosen_food2 = @foods2[0]
		  @calc2 = @chosen_food2.carb / 100.0 * params["amout_g_2"].to_i
		end
		@foods3 = Food.where(name: params["food_name_3"] )
		if @foods3.present?
		  @chosen_food3 = @foods3[0]
		  @calc3 = @chosen_food3.carb / 100.0 * params["amout_g_3"].to_i
		end
		@foods4 = Food.where(name: params["food_name_4"] )
		if @foods4.present?
		  @chosen_food4 = @foods4[0]
		  @calc4 = @chosen_food4.carb / 100.0 * params["amout_g_4"].to_i
		end
		@foods5 = Food.where(name: params["food_name_5"] )
		if @foods5.present?
		  @chosen_food5 = @foods5[0]
		  @calc5 = @chosen_food5.carb / 100.0 * params["amout_g_5"].to_i
		end
		@foods6 = Food.where(name: params["food_name_6"] )
		if @foods6.present?
		  @chosen_food6 = @foods6[0]
		  @calc6 = @chosen_food6.carb / 100.0 * params["amout_g_6"].to_i
		end
		@foods7 = Food.where(name: params["food_name_7"] )
		if @foods7.present?
		  @chosen_food7 = @foods7[0]
		  @calc7 = @chosen_food7.carb / 100.0 * params["amout_g_7"].to_i
		end
		@foods8 = Food.where(name: params["food_name_8"] )
		if @foods8.present?
		  @chosen_food8 = @foods8[0]
		  @calc8 = @chosen_food8.carb / 100.0 * params["amout_g_8"].to_i
		end
		@foods9 = Food.where(name: params["food_name_9"] )
		if @foods9.present?
		  @chosen_food9 = @foods9[0]
		  @calc9 = @chosen_food9.carb / 100.0 * params["amout_g_9"].to_i
		end
		@foods10 = Food.where(name: params["food_name_10"] )
		if @foods10.present?
		  @chosen_food10 = @foods10[0]
		  @calc10 = @chosen_food10.carb / 100.0 * params["amout_g_10"].to_i
		end

		@calc_total = @calc1.to_i + @calc2.to_i + @calc3.to_i + @calc4.to_i + @calc5.to_i + @calc6.to_i + @calc7.to_i + @calc8.to_i + @calc9.to_i + @calc10.to_i
	end


	def show
		@param = param
	end
end
