class Product < ActiveRecord::Base

	validates :name, :presence => true, :length => {:minimum => 3}
	validates :image_name, :presence => true
	
	has_many :bids, :dependent => :destroy
	
	scope :ending, :limit => 4
	scope :home, :limit => 8



end
