class PackageElement < ActiveRecord::Base

  belongs_to :package_element_type

  has_many :product_package_elements
  has_many :products, through: :product_package_elements

  has_attached_file :image

  validates_presence_of :package_element_type, :number, :size, :cost

end
