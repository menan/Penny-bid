class User < ActiveRecord::Base
  	validates :password, :confirmation => true, :presence => true, :on => :update
  	validates :name, :presence => true, :allow_nil => true, :on => :update
	validates :email, :presence =>true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "is invalid"}, :uniqueness=>true
	has_many :bids, :dependent => :destroy

end
