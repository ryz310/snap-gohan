class SettingController < ApplicationController
	before_action :set_food_setting, only: [:index, :update]

  def index
  end

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
      params.require(:food).permit(:refuse, :energy, :energy_kj, :water, :protein, :protein_sum_of_amino_acid_residuse, :lipid, :triacylglycerol_equivalents, :carbohydrate, :ash, :sodium, :potassium, :calcium, :magnesium, :phosphorus, :iron, :zinc, :copper, :manganese, :iodine, :selenium, :chromium, :molybdenum, :retinol, :alpha_carotenes, :beta_carotenes, :beta_cryptoxanthin, :bata_carotene_equivalents, :retinol_activity_equivalents, :vitamind, :alpha_tocopherols, :beta_tocopherols, :gamma_tocopherols, :delta_tocopherols, :vitamink, :thiamin, :riboflavin, :niacin, :vitaminb6, :vitaminb12, :folate, :pantothenic_acid, :biotin, :ascorbic_acid, :saturated_fatty_acids, :monounsaturated_fatty_acids, :polyunsaturated_fatty_acids, :cholesterol, :soluble_dietary_fibers, :insoluble_dietary_fibers, :total_dietary_fibers, :salt_equivalents)
    end
end
