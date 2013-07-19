class PledgesController < ApplicationController
  def new
  end

  def create
    @pledge = Pledge.new(params[:pledge])
  end

  def destroy
  end
end
