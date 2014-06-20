class Product < ActiveRecord::Base

  belongs_to :product_type
  belongs_to :category
  belongs_to :markup
  belongs_to :item_class
  belongs_to :brand
  belongs_to :pallet

  has_many :product_package_elements
  has_many :package_elements, through: :product_package_elements

  has_attached_file :image_product_original
  has_attached_file :image_product
  has_attached_file :image_hero
  has_attached_file :image_front_original
  has_attached_file :image_front
  has_attached_file :image_back_original
  has_attached_file :image_back
  has_attached_file :image_bottom_original
  has_attached_file :image_bottom
  has_attached_file :tag_artwork
  has_attached_file :overlabel_front_artwork
  has_attached_file :overlabel_back_artwork

  validates_presence_of :name

end
