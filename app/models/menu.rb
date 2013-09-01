class Menu < ActiveRecord::Base
  belongs_to :category, class_name: :MenuCategory, foreign_key: :category_id
  mount_uploader :image, MenuImageUploader
  validates :name,  presence: true
  validates :image, file_size: {maximum: 1024.kilobytes.to_i}
end
