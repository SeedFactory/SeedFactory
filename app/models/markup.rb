class Markup < ActiveRecord::Base

  validates_presence_of :jobber, :distributor, :wholesale, :dealer, :retail, :online, :number

end
