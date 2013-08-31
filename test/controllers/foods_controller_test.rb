require 'test_helper'

class FoodsControllerTest < ActionController::TestCase
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post :create, food: { alpha_carotenes: @food.alpha_carotenes, alpha_tocopherols: @food.alpha_tocopherols, ascorbic_acid: @food.ascorbic_acid, ash: @food.ash, bata_carotene_equivalents: @food.bata_carotene_equivalents, beta_carotenes: @food.beta_carotenes, beta_cryptoxanthin: @food.beta_cryptoxanthin, beta_tocopherols: @food.beta_tocopherols, biotin: @food.biotin, calcium: @food.calcium, carbohydrate: @food.carbohydrate, cholesterol: @food.cholesterol, chromium: @food.chromium, classification: @food.classification, copper: @food.copper, delta_tocopherols: @food.delta_tocopherols, energy: @food.energy, energy_kj: @food.energy_kj, folate: @food.folate, food_group_id: @food.food_group_id, gamma_tocopherols: @food.gamma_tocopherols, insoluble_dietary_fibers: @food.insoluble_dietary_fibers, iodine: @food.iodine, iron: @food.iron, lipid: @food.lipid, magnesium: @food.magnesium, manganese: @food.manganese, molybdenum: @food.molybdenum, monounsaturated_fatty_acids: @food.monounsaturated_fatty_acids, name: @food.name, niacin: @food.niacin, number: @food.number, pantothenic_acid: @food.pantothenic_acid, phosphorus: @food.phosphorus, polyunsaturated_fatty_acids: @food.polyunsaturated_fatty_acids, potassium: @food.potassium, protein: @food.protein, protein_sum_of_amino_acid_residuse: @food.protein_sum_of_amino_acid_residuse, refuse: @food.refuse, retinol: @food.retinol, retinol_activity_equivalents: @food.retinol_activity_equivalents, riboflavin: @food.riboflavin, salt_equivalents: @food.salt_equivalents, saturated_fatty_acids: @food.saturated_fatty_acids, selenium: @food.selenium, sodium: @food.sodium, soluble_dietary_fibers: @food.soluble_dietary_fibers, subdivision: @food.subdivision, thiamin: @food.thiamin, total_dietary_fibers: @food.total_dietary_fibers, triacylglycerol_equivalents: @food.triacylglycerol_equivalents, vitaminb12: @food.vitaminb12, vitaminb6: @food.vitaminb6, vitamind: @food.vitamind, vitamink: @food.vitamink, water: @food.water, zinc: @food.zinc }
    end

    assert_redirected_to food_path(assigns(:food))
  end

  test "should show food" do
    get :show, id: @food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food
    assert_response :success
  end

  test "should update food" do
    patch :update, id: @food, food: { alpha_carotenes: @food.alpha_carotenes, alpha_tocopherols: @food.alpha_tocopherols, ascorbic_acid: @food.ascorbic_acid, ash: @food.ash, bata_carotene_equivalents: @food.bata_carotene_equivalents, beta_carotenes: @food.beta_carotenes, beta_cryptoxanthin: @food.beta_cryptoxanthin, beta_tocopherols: @food.beta_tocopherols, biotin: @food.biotin, calcium: @food.calcium, carbohydrate: @food.carbohydrate, cholesterol: @food.cholesterol, chromium: @food.chromium, classification: @food.classification, copper: @food.copper, delta_tocopherols: @food.delta_tocopherols, energy: @food.energy, energy_kj: @food.energy_kj, folate: @food.folate, food_group_id: @food.food_group_id, gamma_tocopherols: @food.gamma_tocopherols, insoluble_dietary_fibers: @food.insoluble_dietary_fibers, iodine: @food.iodine, iron: @food.iron, lipid: @food.lipid, magnesium: @food.magnesium, manganese: @food.manganese, molybdenum: @food.molybdenum, monounsaturated_fatty_acids: @food.monounsaturated_fatty_acids, name: @food.name, niacin: @food.niacin, number: @food.number, pantothenic_acid: @food.pantothenic_acid, phosphorus: @food.phosphorus, polyunsaturated_fatty_acids: @food.polyunsaturated_fatty_acids, potassium: @food.potassium, protein: @food.protein, protein_sum_of_amino_acid_residuse: @food.protein_sum_of_amino_acid_residuse, refuse: @food.refuse, retinol: @food.retinol, retinol_activity_equivalents: @food.retinol_activity_equivalents, riboflavin: @food.riboflavin, salt_equivalents: @food.salt_equivalents, saturated_fatty_acids: @food.saturated_fatty_acids, selenium: @food.selenium, sodium: @food.sodium, soluble_dietary_fibers: @food.soluble_dietary_fibers, subdivision: @food.subdivision, thiamin: @food.thiamin, total_dietary_fibers: @food.total_dietary_fibers, triacylglycerol_equivalents: @food.triacylglycerol_equivalents, vitaminb12: @food.vitaminb12, vitaminb6: @food.vitaminb6, vitamind: @food.vitamind, vitamink: @food.vitamink, water: @food.water, zinc: @food.zinc }
    assert_redirected_to food_path(assigns(:food))
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete :destroy, id: @food
    end

    assert_redirected_to foods_path
  end
end
