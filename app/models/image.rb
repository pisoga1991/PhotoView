class Image < ActiveRecord::Base
  attr_accessible :category_id, :name, :image, :remote_image_url
  belongs_to :category

  validates_presence_of :name, :image
  mount_uploader :image, ImageUploader
end
