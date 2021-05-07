class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @events = Event.all
    @coming_events = Event.coming_events
    @prev_events = Event.prev_events
  end

  def show
    @event = Event.find(params[:id])
    @users = @event.users
  end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'Your event was created'
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def display_coming
    @coming_events = Event.coming_events
  end

  def display_prev
    @prev_events = Event.prev_events
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :location, :description)
  end
end
