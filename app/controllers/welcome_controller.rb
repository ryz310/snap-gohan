class WelcomeController < ApplicationController
  
  PICTURE_COUNT = 10
  
  def index
      seed = [0, Menu.count - PICTURE_COUNT - 1].max
      
      ids = Menu
              .offset(rand seed)
              .limit(500)
              .pluck(:id)
              .sample(PICTURE_COUNT)
              
      @pictures = Menu
                    .where(id: ids)
                    .where("image is not null")
                    .select(:id, :image)
                    .map { |p|
                      p.image.url(:thumb).to_s if p.image?
                    }.shuffle
  end
end
