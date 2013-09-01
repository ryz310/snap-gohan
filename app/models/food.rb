class Food < ActiveRecord::Base
  belongs_to :group, class_name: :FoodGroup, foreign_key: :food_group_id
  
  has_many :foodstuffs, dependent: :destroy
  has_many :menus, through: :foodstuffs
end
