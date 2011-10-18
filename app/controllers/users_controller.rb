class UsersController < ApplicationController


	def new
		
		@user = User.new
	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render :json => @users }
	    end
		
	end
	def create
		
		@user = User.new(params[:user])
		@user.bids_left = 60
		
		
		
		respond_to do |format|
	      if @user.save
	        format.html { redirect_to @user, :notice => 'User was successfully signed up.' }
	        format.json { render :json => @user, :status => :created, :location => @user }
	      else
	        format.html { render :action => "new" }
	        format.json { render :json => @user.errors, :status => :unprocessable_entity }
	      end
    	end
		
	end
	
end
