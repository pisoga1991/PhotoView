class Image < ActiveRecord::Base
  attr_accessible :category_id, :name, :image, :remote_image_url
  belongs_to :category

  validates_presence_of :name, :image,length: { maximum: 50 }
  validates :category_id, presence: true
  validates :image, presence: true
  validates :category, presence: true
  mount_uploader :image, ImageUploader
end
