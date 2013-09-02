class Menu < ActiveRecord::Base
  belongs_to :category, class_name: :MenuCategory, foreign_key: :category_id
  
  has_many :foodstuffs, dependent: :destroy
  has_many :foods, through: :foodstuffs
  
  mount_uploader :image, MenuImageUploader
  validates :name,  presence: true
  validates :image, file_size: {maximum: 512.kilobytes.to_i}
end
