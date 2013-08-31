class FoodstuffsController < ApplicationController
  before_action :set_foodstuff, only: [:show, :edit, :update, :destroy]

  # GET /foodstuffs
  # GET /foodstuffs.json
  def index
    @foodstuffs = Foodstuff.all
  end

  # GET /foodstuffs/1
  # GET /foodstuffs/1.json
  def show
  end

  # GET /foodstuffs/new
  def new
    @foodstuff = Foodstuff.new
  end

  # GET /foodstuffs/1/edit
  def edit
  end

  # POST /foodstuffs
  # POST /foodstuffs.json
  def create
    @foodstuff = Foodstuff.new(foodstuff_params)

    respond_to do |format|
      if @foodstuff.save
        format.html { redirect_to @foodstuff, notice: 'Foodstuff was successfully created.' }
        format.json { render action: 'show', status: :created, location: @foodstuff }
      else
        format.html { render action: 'new' }
        format.json { render json: @foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodstuffs/1
  # PATCH/PUT /foodstuffs/1.json
  def update
    respond_to do |format|
      if @foodstuff.update(foodstuff_params)
        format.html { redirect_to @foodstuff, notice: 'Foodstuff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodstuffs/1
  # DELETE /foodstuffs/1.json
  def destroy
    @foodstuff.destroy
    respond_to do |format|
      format.html { redirect_to foodstuffs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodstuff
      @foodstuff = Foodstuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodstuff_params
      params.require(:foodstuff).permit(:menu_id, :food_id, :amount)
    end
end
