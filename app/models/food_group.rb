class FoodGroup < ActiveRecord::Base
  has_one :food, foreign_key: :food_group_id

  # number: "00" は管理用データ
  default_scope where.not(number: "00")
end
