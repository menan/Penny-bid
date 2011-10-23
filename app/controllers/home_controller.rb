class HomeController < ApplicationController
  
  def index
    @products = Product.ending
    @user = User.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
    end
  end

end
