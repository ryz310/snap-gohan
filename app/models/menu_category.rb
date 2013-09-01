class MenuCategory < ActiveRecord::Base
  has_many :menu, foreign_key: :category_id, dependent: :destroy
end
