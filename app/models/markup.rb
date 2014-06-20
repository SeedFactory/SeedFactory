class Markup < ActiveRecord::Base

  validates_presence_of :jobber, :distributor, :wholesale, :dealer, :retail, :online, :number
	validates_uniqueness_of :number

end
