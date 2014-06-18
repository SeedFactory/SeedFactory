json.array!(@products) do |product|
  json.extract! product, :id, :code_prefix, :code_suffix, :code, :name, :weight, :items_per_case, :type_id, :category_id, :markup_id, :item_class_id, :upc, :pallet_bag_count, :pallet_case_count, :pallet_size, :pallet_weight, :gaylord, :description, :brand_id, :production_line, :screen_size_top, :screen_size_bottom, :catalog_page
  json.url product_url(product, format: :json)
end
