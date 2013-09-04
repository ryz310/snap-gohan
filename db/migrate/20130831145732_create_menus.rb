class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.belongs_to :category, index: true
      t.string :name,        null: false, limit:  64, default: ""
      t.text   :description, limit: 1024
      t.string :image

      t.timestamps
    end
  end
end
