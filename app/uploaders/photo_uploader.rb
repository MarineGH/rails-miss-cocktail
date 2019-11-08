class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true # Force version generation at upload time.

  process convert: 'jpg'

  version :small do
    resize_to_fit 150, 150
  end

  version :big do
    resize_to_fit 300, 800
  end
  # Remove everything else
end
