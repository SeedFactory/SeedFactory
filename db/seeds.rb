# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
product_types = ProductType.create([{ name: 'No Melt' }, { name: 'High Energy' }, { name: 'No Corn Blends' }, { name: 'Popcorn Blends' }, { name: 'Whole Corn Blends' }, { name: 'Premium Pigeon' }, { name: 'Premium Gamebird' }])
item_classes = ItemClass.create([{ name: 'Single'}, { name: 'Farmers'}, { name: 'Best'}, { name: 'VP Ent'}, { name: 'VK Special'}, { name: 'Wildbird'}, { name: 'Suet'}, { name: 'Other'}, { name: 'JS West'}, { name: 'WB Inv'}, { name: 'Nekton'}, { name: 'Avian'}, { name: 'VK Prem'}, { name: 'Rogue'}, { name: 'wildb Ctm'}, { name: 'Premium'}, { name: 'Nutrena'}, { name: 'wildb Inv Ctm'}, { name: 'Associated'}, { name: 'Pigeon Ctm'}, { name: 'Pigeon'}, { name: 'Gameb Ctm'}, { name: 'Economy'}, { name: 'Game Bird'}, { name: 'Cage Bird'}, { name: 'Cage Ctm'}, { name: 'Sm Animal'}, { name: 'Feather'}, { name: 'Grit'}, { name: 'Natures'}, { name: 'Vk Sm Anim'}, { name: 'Bedding'}, { name: 'Vk Wild'}, { name: 'Petamine'}, { name: 'Eagle Mill'}, { name: 'SF Item'}])