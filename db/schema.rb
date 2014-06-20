# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140619231859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands", ["name"], name: "index_brands_on_name", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", using: :btree

  create_table "ingredients", force: true do |t|
    t.integer  "number",        null: false
    t.string   "description",   null: false
    t.integer  "cwt",           null: false
    t.decimal  "cost",          null: false
    t.decimal  "protein"
    t.decimal  "fat"
    t.decimal  "fiber"
    t.decimal  "ash"
    t.decimal  "calcium"
    t.decimal  "phosphorus"
    t.decimal  "vitamin_a"
    t.decimal  "vitamin_d3"
    t.decimal  "vitamin_e"
    t.decimal  "vitamin_k"
    t.decimal  "vitamin_b12"
    t.decimal  "riboflavin"
    t.decimal  "met_energy"
    t.decimal  "panto"
    t.decimal  "niacin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ingredient_id"
  end

  create_table "item_classes", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_classes", ["name"], name: "index_item_classes_on_name", using: :btree

  create_table "markups", force: true do |t|
    t.text     "description"
    t.decimal  "jobber",        default: 0.0, null: false
    t.decimal  "distributor",   default: 0.0, null: false
    t.decimal  "wholesale",     default: 0.0, null: false
    t.decimal  "dealer",        default: 0.0, null: false
    t.decimal  "retail",        default: 0.0, null: false
    t.decimal  "online",        default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "markup_number"
  end

  create_table "package_element_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "package_element_types", ["name"], name: "index_package_element_types_on_name", using: :btree

  create_table "package_elements", force: true do |t|
    t.string   "name",                    null: false
    t.integer  "package_element_type_id", null: false
    t.string   "number",                  null: false
    t.string   "size",                    null: false
    t.decimal  "cost",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "notes"
    t.integer  "bag_id"
  end

  add_index "package_elements", ["package_element_type_id"], name: "index_package_elements_on_package_element_type_id", using: :btree

  create_table "pallets", force: true do |t|
    t.string   "description"
    t.string   "size"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_ingredients", force: true do |t|
    t.integer  "product_id",    null: false
    t.integer  "ingredient_id", null: false
    t.decimal  "amount",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_ingredients", ["ingredient_id"], name: "index_product_ingredients_on_ingredient_id", using: :btree
  add_index "product_ingredients", ["product_id"], name: "index_product_ingredients_on_product_id", using: :btree

  create_table "product_package_elements", force: true do |t|
    t.integer  "product_id",         null: false
    t.integer  "package_element_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_package_elements", ["package_element_id"], name: "index_product_package_elements_on_package_element_id", using: :btree
  add_index "product_package_elements", ["product_id"], name: "index_product_package_elements_on_product_id", using: :btree

  create_table "product_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_types", ["name"], name: "index_product_types_on_name", using: :btree

  create_table "products", force: true do |t|
    t.string   "code_prefix"
    t.string   "code_suffix"
    t.integer  "code",                                 null: false
    t.string   "name",                                 null: false
    t.decimal  "weight",                               null: false
    t.integer  "items_per_case"
    t.integer  "product_type_id"
    t.integer  "category_id",                          null: false
    t.integer  "markup_id",                            null: false
    t.integer  "item_class_id",                        null: false
    t.integer  "upc"
    t.integer  "pallet_bag_count"
    t.integer  "pallet_case_count"
    t.string   "pallet_size"
    t.decimal  "pallet_weight"
    t.boolean  "gaylord"
    t.text     "description"
    t.integer  "brand_id"
    t.integer  "production_line"
    t.string   "screen_size_top"
    t.string   "screen_size_bottom"
    t.integer  "catalog_page"
    t.integer  "pallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_product_original_file_name"
    t.string   "image_product_original_content_type"
    t.integer  "image_product_original_file_size"
    t.datetime "image_product_original_updated_at"
    t.string   "image_product_file_name"
    t.string   "image_product_content_type"
    t.integer  "image_product_file_size"
    t.datetime "image_product_updated_at"
    t.string   "image_hero_file_name"
    t.string   "image_hero_content_type"
    t.integer  "image_hero_file_size"
    t.datetime "image_hero_updated_at"
    t.string   "image_front_original_file_name"
    t.string   "image_front_original_content_type"
    t.integer  "image_front_original_file_size"
    t.datetime "image_front_original_updated_at"
    t.string   "image_front_file_name"
    t.string   "image_front_content_type"
    t.integer  "image_front_file_size"
    t.datetime "image_front_updated_at"
    t.string   "image_back_original_file_name"
    t.string   "image_back_original_content_type"
    t.integer  "image_back_original_file_size"
    t.datetime "image_back_original_updated_at"
    t.string   "image_back_file_name"
    t.string   "image_back_content_type"
    t.integer  "image_back_file_size"
    t.datetime "image_back_updated_at"
    t.string   "image_bottom_original_file_name"
    t.string   "image_bottom_original_content_type"
    t.integer  "image_bottom_original_file_size"
    t.datetime "image_bottom_original_updated_at"
    t.string   "image_bottom_file_name"
    t.string   "image_bottom_content_type"
    t.integer  "image_bottom_file_size"
    t.datetime "image_bottom_updated_at"
    t.string   "tag_artwork_file_name"
    t.string   "tag_artwork_content_type"
    t.integer  "tag_artwork_file_size"
    t.datetime "tag_artwork_updated_at"
    t.string   "overlabel_front_artwork_file_name"
    t.string   "overlabel_front_artwork_content_type"
    t.integer  "overlabel_front_artwork_file_size"
    t.datetime "overlabel_front_artwork_updated_at"
    t.string   "overlabel_back_artwork_file_name"
    t.string   "overlabel_back_artwork_content_type"
    t.integer  "overlabel_back_artwork_file_size"
    t.datetime "overlabel_back_artwork_updated_at"
    t.string   "formula_number"
    t.integer  "bag_id"
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["code"], name: "index_products_on_code", using: :btree
  add_index "products", ["code_prefix"], name: "index_products_on_code_prefix", using: :btree
  add_index "products", ["code_suffix"], name: "index_products_on_code_suffix", using: :btree
  add_index "products", ["item_class_id"], name: "index_products_on_item_class_id", using: :btree
  add_index "products", ["markup_id"], name: "index_products_on_markup_id", using: :btree
  add_index "products", ["pallet_id"], name: "index_products_on_pallet_id", using: :btree
  add_index "products", ["product_type_id"], name: "index_products_on_product_type_id", using: :btree
  add_index "products", ["production_line"], name: "index_products_on_production_line", using: :btree
  add_index "products", ["upc"], name: "index_products_on_upc", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "user_roles", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "role_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_roles", ["role_id"], name: "index_user_roles_on_role_id", using: :btree
  add_index "user_roles", ["user_id"], name: "index_user_roles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token",               null: false
    t.string   "single_access_token",             null: false
    t.string   "perishable_token",                null: false
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
