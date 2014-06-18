class ProductPackageElement < ActiveRecord::Base

  belongs_to :product
  belongs_to :package_element

  validates_presence_of :product, :package_element
  validates_uniqueness_of :product_id, scope: :package_element_id

end
