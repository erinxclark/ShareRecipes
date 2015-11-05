class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true

  has_many :tags, :dependent => :destroy
  has_many :ratings, :dependent => :destroy

  has_attached_file :image, styles: {small: "60x60#", med: "300x300#", large: "500x500#"}
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }
end
