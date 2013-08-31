class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.belongs_to :category, index: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
