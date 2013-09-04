class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.belongs_to :food_group, index: true
      t.string :number,         null: false, limit:  5, default: ""
      t.string :classification, null: false, limit: 64, default: ""
      t.string :subdivision,    null: false, limit: 96, default: ""
      t.string :name,           null: false, limit: 96, default: ""
      t.float :refuse,                             null: false, default: 0.0
      t.float :energy,                             null: false, default: 0.0
      t.float :energy_kj,                          null: false, default: 0.0
      t.float :water,                              null: false, default: 0.0
      t.float :protein,                            null: false, default: 0.0
      t.float :protein_sum_of_amino_acid_residuse, null: false, default: 0.0
      t.float :lipid,                              null: false, default: 0.0
      t.float :triacylglycerol_equivalents,        null: false, default: 0.0
      t.float :carbohydrate,                       null: false, default: 0.0
      t.float :ash,                                null: false, default: 0.0
      t.float :sodium,                             null: false, default: 0.0
      t.float :potassium,                          null: false, default: 0.0
      t.float :calcium,                            null: false, default: 0.0
      t.float :magnesium,                          null: false, default: 0.0
      t.float :phosphorus,                         null: false, default: 0.0
      t.float :iron,                               null: false, default: 0.0
      t.float :zinc,                               null: false, default: 0.0
      t.float :copper,                             null: false, default: 0.0
      t.float :manganese,                          null: false, default: 0.0
      t.float :iodine,                             null: false, default: 0.0
      t.float :selenium,                           null: false, default: 0.0
      t.float :chromium,                           null: false, default: 0.0
      t.float :molybdenum,                         null: false, default: 0.0
      t.float :retinol,                            null: false, default: 0.0
      t.float :alpha_carotenes,                    null: false, default: 0.0
      t.float :beta_carotenes,                     null: false, default: 0.0
      t.float :beta_cryptoxanthin,                 null: false, default: 0.0
      t.float :bata_carotene_equivalents,          null: false, default: 0.0
      t.float :retinol_activity_equivalents,       null: false, default: 0.0
      t.float :vitamind,                           null: false, default: 0.0
      t.float :alpha_tocopherols,                  null: false, default: 0.0
      t.float :beta_tocopherols,                   null: false, default: 0.0
      t.float :gamma_tocopherols,                  null: false, default: 0.0
      t.float :delta_tocopherols,                  null: false, default: 0.0
      t.float :vitamink,                           null: false, default: 0.0
      t.float :thiamin,                            null: false, default: 0.0
      t.float :riboflavin,                         null: false, default: 0.0
      t.float :niacin,                             null: false, default: 0.0
      t.float :vitaminb6,                          null: false, default: 0.0
      t.float :vitaminb12,                         null: false, default: 0.0
      t.float :folate,                             null: false, default: 0.0
      t.float :pantothenic_acid,                   null: false, default: 0.0
      t.float :biotin,                             null: false, default: 0.0
      t.float :ascorbic_acid,                      null: false, default: 0.0
      t.float :saturated_fatty_acids,              null: false, default: 0.0
      t.float :monounsaturated_fatty_acids,        null: false, default: 0.0
      t.float :polyunsaturated_fatty_acids,        null: false, default: 0.0
      t.float :cholesterol,                        null: false, default: 0.0
      t.float :soluble_dietary_fibers,             null: false, default: 0.0
      t.float :insoluble_dietary_fibers,           null: false, default: 0.0
      t.float :total_dietary_fibers,               null: false, default: 0.0
      t.float :salt_equivalents,                   null: false, default: 0.0

      t.timestamps
    end
  end
end
