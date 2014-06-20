class Markup < ActiveRecord::Base
	validates_uniqueness_of :markup_number
end
