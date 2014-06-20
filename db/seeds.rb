require 'csv'
require 'ansi'

def csv name, &block
  rows = CSV.table("#{Rails.root}/db/seed_data/#{name}.csv")
  progress = ANSI::ProgressBar.new(name, rows.length)
  rows.each do |row|
    progress.inc
    begin
      block.call(row.to_hash)
    rescue Exception => e
      binding.pry
    end
  end
  progress.finish
end

csv('product_types') do |row|
  ProductType.create!(row)
end

csv('item_classes') do |row|
  ItemClass.create!(row)
end

csv('package_element_types') do |row|
  PackageElementType.create!(row)
end

csv('ingredients') do |row|
  row.delete(:company_id)
  Ingredient.create!(row)
end

csv('markups') do |row|
  row.delete(:company_id)
  Markup.create!(row)
end

csv('package_elements') do |row|
  row.delete(:company_id)
  row[:package_element_type] = PackageElementType.find_by!(
    name: row.delete(:package_element_type_name))
  if date = row[:updated_at]
    row[:updated_at] = DateTime.strptime(date, '%m/%d/%Y 0:00:00')
  end
  PackageElement.create!(row)
end

csv('product_ingredients') do |row|
  ProductIngredient.create!(row)
end

csv('products') do |row|
  row.delete(:distrib1_markup)
  row.delete(:distrib2_markup)
  row.delete(:retail_list_markup)
  row.delete(:company_id)
  row[:package_elements] = PackageElement.where(id: row.delete(:bag_id))
  Product.create!(row)  
end
