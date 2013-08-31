class CreateFoodGroups < ActiveRecord::Migration
  def change
    create_table :food_groups do |t|
      t.string :number, null: false, limit: 2,  default: ""
      t.string :name,   null: false, limit: 32, default: ""

      t.timestamps
    end
  end
end
