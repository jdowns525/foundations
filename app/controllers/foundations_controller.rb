class FoundationsController < ApplicationController
  before_action :set_foundation, only: [:show, :edit, :update, :destroy, :add_favorite, :remove_favorite]
  before_action :set_foundations, only: [:index]
  
  def index
    apply_category_filter
    apply_state_filter
    apply_sorting
    
    respond_to do |format|
      format.html
      format.json { render json: @foundations }
    end
  end

  def show
    @latitude = @foundation.latitude
    @longitude = @foundation.longitude
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
      @recommended_foundations = current_user.foundations.flat_map do |foundation|
        Foundation.search_by_description(foundation.description).limit(5)
      end
    else
      redirect_to new_user_session_path, alert: "You need to sign in or sign up to see recommendations."
    end
  end

  def map
    @foundation = Foundation.find(params[:id])
    @latitude = @foundation.latitude
    @longitude = @foundation.longitude
  end

  private

  def set_foundation
    @foundation = Foundation.find(params[:id])
  end

  def set_foundations
    @foundations = Foundation.all
  end

  def apply_category_filter
    return unless params[:category].present?

    @foundations = @foundations.where(category: params[:category])
  end

  def apply_state_filter
    return unless params[:state].present?

    @foundations = @foundations.where(state: params[:state])
  end

  def apply_sorting
    case params[:sort_by]
    when 'name'
      @foundations = @foundations.order(:name)
    when 'date_added'
      @foundations = @foundations.order(created_at: :desc)
    when 'impact'
      @foundations = @foundations.order(impact_score: :desc)
    end
  end

  def foundation_params
    params.require(:foundation).permit(:name, :address, :city, :state, :zipcode, :latitude, :longitude, :description, :category)
  end
end
