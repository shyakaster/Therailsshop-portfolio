class PortfolioUploader < CarrierWave::Uploader::Base
  storage :aws
  def store_dir
       "/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
     # "#{Rails.root}/public/"
  end
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
