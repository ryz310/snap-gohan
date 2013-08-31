class FoodGroup < ActiveRecord::Base
  has_one :food, foreign_key: :food_group_id
end
