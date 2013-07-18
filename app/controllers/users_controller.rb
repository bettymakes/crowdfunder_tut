class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to root_path, :notice => "Account created"
    else
      flash.now.alert = "Try again"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email, 
      :first_name, 
      :last_name, 
      :password
    )
  end
  
end
