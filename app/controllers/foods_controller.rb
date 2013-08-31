class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    p = params[:target] || Hash.new
    @group_id = p[:group] || FoodGroup.all.first.id
    @size     = p[:size] || 10
    
    food_condition = Food
                      .where(food_group_id: @group_id)
    @foods_count   = food_condition
                      .count 
    @foods         = food_condition
                      .page(params[:page])
                      .per(@size)
                      .order(:number)
    @hoge = params
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food }
      else
        format.html { render action: 'new' }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:food_group_id, :number, :classification, :subdivision, :name, :refuse, :energy, :energy_kj, :water, :protein, :protein_sum_of_amino_acid_residuse, :lipid, :triacylglycerol_equivalents, :carbohydrate, :ash, :sodium, :potassium, :calcium, :magnesium, :phosphorus, :iron, :zinc, :copper, :manganese, :iodine, :selenium, :chromium, :molybdenum, :retinol, :alpha_carotenes, :beta_carotenes, :beta_cryptoxanthin, :bata_carotene_equivalents, :retinol_activity_equivalents, :vitamind, :alpha_tocopherols, :beta_tocopherols, :gamma_tocopherols, :delta_tocopherols, :vitamink, :thiamin, :riboflavin, :niacin, :vitaminb6, :vitaminb12, :folate, :pantothenic_acid, :biotin, :ascorbic_acid, :saturated_fatty_acids, :monounsaturated_fatty_acids, :polyunsaturated_fatty_acids, :cholesterol, :soluble_dietary_fibers, :insoluble_dietary_fibers, :total_dietary_fibers, :salt_equivalents)
    end
end
