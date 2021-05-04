class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'Your event was created'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location, :desc)
  end
end