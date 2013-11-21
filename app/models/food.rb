class Food < ActiveRecord::Base
  belongs_to :group, class_name: :FoodGroup, foreign_key: :food_group_id
  
  has_many :foodstuffs, dependent: :destroy
  has_many :menus, through: :foodstuffs
  
  # number "00000" ~ "01000" は管理用データ
  default_scope where.not(number: "00000".."01000")

  #
  def full_name
    "#{self.classification} : #{self.subdivision}"  
  end
  
  #
  def refuse_percentage
    (self.refuse * 100).round
  end

  def Food.setting
    Food.unscoped.where(number: "00000").first
  end
end
