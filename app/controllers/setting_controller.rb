class SettingController < ApplicationController
	before_action :set_food_setting, only: [:index, :update]

  # GET /setting
  def index
  end

  # PATCH /setting/update
  def update
  	respond_to do |format|
	  	@food_setting.update(food_params)
	  	format.html {render action: 'index'}
  	end
  end

  private
  		def set_food_setting
  			@food_setting = Food.setting
  		end

      def food_params
        params.require(:food).permit(*Food::NUTRIENTS_ALL)
      end
end
