class UsersController < ApplicationController


	def new
		
		@user = User.new
	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render :json => @users }
	    end
		
	end
	
	def index
		@users = User.all
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
	        format.html { redirect_to '/', :notice => 'User was successfully signed up.' }
	        format.json { render :json => @user, :status => :created, :location => @user }
	      else
	        format.html { render :action => "new" }
	        format.json { render :json => @user.errors, :status => :unprocessable_entity }
	      end
    	end
		
	end
	
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end
