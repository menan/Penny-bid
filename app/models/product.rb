class Product < ActiveRecord::Base

	validates :name, :presence => true, :length => {:minimum => 3}
	validates :image_name, :presence => true
	
	has_many :bids, :dependent => :destroy
	
	scope :ending, :conditions => {:end_time => Time.now - 12.years  .. Time.now},:limit => 4



end
