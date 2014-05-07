class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    respond_to do | format |
	if @user.save
	  format.html { redirect_to users_url,
	    notice: "User #{@user.name} was successfully created. " }
	  format.json { render action: 'show',
	    status: :created, location: @user }
	else
	  format.html { render action: 'new' }
	  format.json { render json: @user.errors,
	    status: :unprocessable_entity }
	end
     end
  end

  def update
    respond_to do | format |
      if @user.update(user_params)
        format.html { redirect_to users_url,
          notice: "User #{@user.name} was successfully update." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors,
          status: :unprocessable_entity }
      end
   end
  end
 
  def index
    @users = User.all
  end

end
