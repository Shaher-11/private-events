class EventUserController < ApplicationController
  def join
    @event_users = EventUser.new(event_id: params[:id], user_id: current_user.id)
    @event_users.save
    redirect_to events_path
  end
end
