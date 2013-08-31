class Food < ActiveRecord::Base
  belongs_to :group, class_name: :FoodGroup, foreign_key: :food_group_id
end
