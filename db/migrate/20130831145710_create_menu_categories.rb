class CreateMenuCategories < ActiveRecord::Migration
  def change
    create_table :menu_categories do |t|
      t.string :name,        null: false, limit: 64, default: ""
      t.text   :description, limit: 1024

      t.timestamps
    end
  end
end
