class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  default_scope :order => 'created_at DESC',:limit => 10
  
end
