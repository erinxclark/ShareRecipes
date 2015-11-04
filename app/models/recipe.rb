class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true

  has_many :tags, :dependent => :destroy
  has_many :ratings, :dependent => :destroy

  has_attached_file :image, styles: {small: "1000x1000", med: "300x300", large: "400x400"}
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }
end
