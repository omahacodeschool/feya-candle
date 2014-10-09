class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price
  
  # I named this wrong when generating the uploader -- yes, it NEEDS to have uploader twice!
  mount_uploader :image, ImageUploaderUploader
  
end