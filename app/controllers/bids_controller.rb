class BidsController < ApplicationController

	def create
    	@product = Product.find(params[:product_id])
    	@bid = @product.bids.new(params[:bid])
    	@bid.user_id = 7
    	@user = @bid.user
    	
    	
    	if @user.bids_left > 0
    	
	    	@product.current_price = @product.current_price + 0.50
	    	@user.bids_left = @user.bids_left - 1
	    	
	    	
		    respond_to do |format|
		      if @bid.save
	    		@product.save
	    		@user.save
		        format.html { redirect_to @product, :notice => 'Bid was successfully placed.' }
		        format.json { render :json => @product, :status => :created, :location => @product }
		      else
		        format.html { render :action => "new" }
		        format.json { render :json => @bid.errors, :status => :unprocessable_entity }
		      end
		    end
		else
			respond_to do |format|
		        format.html { redirect_to @product, :notice => 'You have no more bids left :(, Buy some more.' }
		        format.json { render :json => @bid.errors, :status => :unprocessable_entity }
		    end
	    end
	end

end
