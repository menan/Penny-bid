class Product < ActiveRecord::Base

	validates :name, :presence => true, :length => {:minimum => 3}
	validates :image_name, :presence => true
	
	has_many :bids, :dependent => :destroy
	
	


end
