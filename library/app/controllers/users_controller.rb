class UsersController < ApplicationController
  before_action :admin

  def admin
    if !admin?
      redirect_to books_url, alert: "You are not an admin"
    end
  end

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
    @users = User.order(:name)
  end
  
  def new
   @user = User.new
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :admin)
  end

end
