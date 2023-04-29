class FoundationsController < ApplicationController
  before_action :set_foundation, only: [:show, :edit, :update, :destroy, :add_favorite, :remove_favorite]

  def index
    @foundations = Foundation.all
  end

  def show
  end

  def new
    @foundation = Foundation.new
  end

  def create
    @foundation = Foundation.new(foundation_params)

    if @foundation.save
      redirect_to @foundation, notice: 'Foundation was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @foundation.update(foundation_params)
      redirect_to @foundation, notice: 'Foundation was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @foundation.destroy
    redirect_to foundations_url, notice: 'Foundation was successfully destroyed.'
  end

  def add_favorite
    current_user.foundations << @foundation
    redirect_to @foundation, notice: 'Foundation was added to your favorites.'
  end

  def remove_favorite
    current_user.foundations.delete(@foundation)
    redirect_to @foundation, notice: 'Foundation was removed from your favorites.'
  end

  private

  def set_foundation
    @foundation = Foundation.find(params[:id])
  end

  def foundation_params
    params.require(:foundation).permit(:name, :address, :city, :state, :zipcode, :latitude, :longitude, :description, :category)
  end
end
