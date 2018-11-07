class CampsController < ApplicationController

  def index
    @camps = Camp.all
  end

  def show
    @camp = Camp.find(params[:id])
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new(camp_params)
    @camp.user = current_user

    if @camp.save
      redirect_to camp_path(@camp)
    else
      render :new
    end
  end

  def edit
    @camp = Camp.find(params[:id])
  end

  def update
    @camp = Camp.find(params[:id])
    @camp.update(camp_params)
  end

  def destroy
    @camp = Camp.find(params[:id])
    @camp.destroy
  end


  private

  def camp_params
    params.require(:camp).permit(:name, :description, :location, :price, :photo)
  end
end
