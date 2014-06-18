class Pallet < ActiveRecord::Base

  has_many :products

  has_attached_file :image

end
