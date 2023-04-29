class EventsController < ApplicationController
  before_action :set_foundation
  before_action :set_event, only: [:edit, :update, :destroy]

  def new
    @event = @foundation.events.new
  end

  def create
    @event = @foundation.events.new(event_params)

    if @event.save
      redirect_to @foundation, notice: 'Event was successfully created.'
    else
      render :new
    end

   User.joins(:foundations).where(foundations: { id: @foundation.id }).each do |user|
      NotificationMailer.event_notification(user, @event).deliver_later
end
    

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @foundation, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to @foundation, notice: 'Event was successfully destroyed.'
  end

  private

  def set_foundation
    @foundation = Foundation.find(params[:foundation_id])
  end

  def set_event
    @event = @foundation.events.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :location, :description)
  end
