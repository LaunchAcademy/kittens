class Kitten < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
