class FoundationsController < ApplicationController
  before_action :set_foundation, only: [:show, :edit, :update, :destroy, :add_favorite, :remove_favorite]

  def index
    @foundations = Foundation.all

    if params[:category].present?
      @foundations = @foundations.where(category: params[:category])
    end

    if params[:state].present?
      @foundations = @foundations.where(state: params[:state])
    end

    case params[:sort_by]
    when 'name'
      @foundations = @foundations.order(:name)
    when 'date_added'
      @foundations = @foundations.order(created_at: :desc)
    when 'impact'
      @foundations = @foundations.order(impact_score: :desc)
    end
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

  def analytics
    @foundation_data = Foundation.group(:category).count
  end

  def remove_favorite
    current_user.foundations.delete(@foundation)
    redirect_to @foundation, notice: 'Foundation was removed from your favorites.'
  end

  def recommendations
    if user_signed_in?
      @recommended_foundations = []
      current_user.foundations.each do |foundation|
        similar_foundations = Foundation.search_by_description(foundation.description).limit(5)
        @recommended_foundations += similar_foundations
      end
    else
      redirect_to new_user_session_path, alert: "You need to sign in or sign up to see recommendations."
    end
  end

  def my_favorites
    @favorites = current_user.foundations
  end

  private

  def set_foundation
    @foundation = Foundation.find(params[:id])
  end

  def foundation_params
    params.require(:foundation).permit(:name, :address, :city, :state, :zipcode, :latitude, :longitude, :description, :category)
  end
end
