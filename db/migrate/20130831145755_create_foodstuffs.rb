class CreateFoodstuffs < ActiveRecord::Migration
  def change
    create_table :foodstuffs do |t|
      t.belongs_to :menu, index: true
      t.belongs_to :food, index: true
      t.float :amount

      t.timestamps
    end
  end
end
