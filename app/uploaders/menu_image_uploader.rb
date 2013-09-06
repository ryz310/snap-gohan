# encoding: utf-8

class MenuImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process tags: ['menu image']

  # Process files as they are uploaded:
  process resize_to_fit: [400, 400]

  # Create different versions of your uploaded files:
  version :thumb do
    process eager: true
    process resize_to_fill: [200, 200]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
