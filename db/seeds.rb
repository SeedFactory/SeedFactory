require 'csv'
require 'ansi'

def csv name, &block
  rows = CSV.table("#{Rails.root}/db/seed_data/#{name}.csv")
  progress = ANSI::ProgressBar.new(name, rows.length)
  rows.each do |row|
    progress.inc
    block.call(row.to_hash)
  end
  progress.finish
end

csv('product_types') do |row|
  ProductType.create(row)
end

csv('item_classes') do |row|
  ItemClass.create(row)
end

csv('package_element_types') do |row|
  PackageElementType.create(row)
end
