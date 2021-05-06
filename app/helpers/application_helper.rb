module ApplicationHelper
  def show_registration(event)
    if event.event_users.exists?(user_id: current_user.id)
      '<h5>Already signed in</h5>'.html_safe
    else
      (link_to 'Join', join_event_users_path(id: @event.id), method: :post).to_s.html_safe
    end
  end
end
