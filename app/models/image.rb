class Image < ActiveRecord::Base
  attr_accessible :category_id, :name, :image, :remote_image_url
  belongs_to :category

  validates :name, presence: true,length: { maximum: 50,minimum: 5 }
  validates :category_id, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
