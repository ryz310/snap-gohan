class Menu < ActiveRecord::Base
  belongs_to :category, class_name: :MenuCategory, foreign_key: :category_id
  
  has_many :foodstuffs, dependent: :destroy
  has_many :foods, through: :foodstuffs
  accepts_nested_attributes_for :foodstuffs, allow_destroy: true,
    reject_if: lambda{ |attrs| attrs[:food_id].blank? }
  
  mount_uploader :image, MenuImageUploader
  validates :name,  presence: true
  validates :image, file_size: {maximum: 2.megabytes}
end
