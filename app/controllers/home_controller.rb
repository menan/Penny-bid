class HomeController < ApplicationController
  
  def index
  
  	if current_user.nil?
    	@products = Product.ending
    else
    	@products = Product.home
    end
     
    @user = User.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
    end
  end

end
