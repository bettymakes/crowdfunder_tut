class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.permit![:user])
    if @user.save
      redirect_to root_path, :notice => "Account created"
    else
      render :new
    end
  end
end
