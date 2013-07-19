class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(params[:pledge])
      if @pledge.save
        redirect :back
      else
        flash[:alert] = "Try again"
      end
  end

  def destroy
  end
end
