class MakeNullOkMarkups < ActiveRecord::Migration
  def change
  	change_column :markups, :jobber,:decimal, default: 0
  	change_column :markups, :distributor,:decimal, default: 0
  	change_column :markups, :wholesale,:decimal, default: 0
  	change_column :markups, :dealer,:decimal, default: 0
  	change_column :markups, :retail,:decimal, default: 0
   	change_column :markups, :online,:decimal, default: 0
  end
end
