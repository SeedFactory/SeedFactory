class ProductsController < ApplicationController
  
  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [
      :code_prefix, 
      :code_suffix, 
      :code, 
      :name, 
      :weight, 
      :items_per_case, 
      :product_type_id, 
      :category_id, 
      :markup_id, 
      :item_class_id, 
      :upc, 
      :pallet_bag_count, 
      :pallet_case_count, 
      :pallet_size, 
      :pallet_weight, 
      :gaylord, 
      :description, 
      :brand_id, 
      :production_line, 
      :screen_size_top, 
      :screen_size_bottom, 
      :catalog_page,
      :image_product_original,
      :image_product,
      :image_hero,
      :image_front_original,
      :image_front,
      :image_back_original,
      :image_back,
      :image_bottom_original,
      :image_bottom,
      :tag_artwork,
      :overlabel_front_artwork,
      :overlabel_back_artwork
    ]
  end

end
