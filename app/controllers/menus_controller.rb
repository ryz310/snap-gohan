class MenusController < ApplicationController
  before_action :set_menu,        only: [:show, :edit, :update, :destroy]
  before_action :set_food_groups, only: [:edit, :update, :new, :create]
    
  # GET /menus
  # GET /menus.json
  def index
    p = params[:target] || Hash.new
    @category_id = p[:category] || MenuCategory.first.id
    @size        = p[:size    ] || 10
    @category_name = MenuCategory.find(@category_id).name
    
    menu_condition = Menu
                      .where(category_id: @category_id)
    @category      = MenuCategory
                      .find(@category_id)                        
    @menus_count   = menu_condition
                      .count
    @menus         = menu_condition
                      .page(params[:page])
                      .per(@size)
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
    @menu.category_id = params[:cayegory_id] || MenuCategory.first.id 
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @menu }
      else
        format.html { render action: 'new' }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end

  # GET /menus/update_food_select
  def update_food_select
    @group_id = params[:group_id] || FoodGroup.first.id
    respond_to do |format|
      format.html { render partial: 'update_food_select', locals: {group_id: @group_id} }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    #
    def set_food_groups
      @food_groups = FoodGroup.all
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(
              :category_id, :name, :description, :image, :remove_image, 
              foodstuffs_attributes: [:id, :food_id, :amount, "_destroy"])
    end
end
