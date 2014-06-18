class AddImagesToProducts < ActiveRecord::Migration
  ATTACHMENTS = %i(
    image_product_original
    image_product
    image_hero
    image_front_original
    image_front
    image_back_original
    image_back
    image_bottom_original
    image_bottom
    tag_artwork
    overlabel_front_artwork
    overlabel_back_artwork)
  def up
    ATTACHMENTS.each do |attachment|
      add_attachment :products, attachment
    end
  end
  def down
    ATTACHMENTS.each do |attachment|
      remove_attachment :products, attachment
    end
  end
end
