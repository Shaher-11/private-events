module ApplicationHelper
  def show_registration(event)
    if event.event_users.include?(user_id: current_user.id)
      '<p>Already signed in</p>'.html_safe
    else
      # rubocop:disable Metrics/LineLength
      (link_to 'Join', join_event_users_path(id: @event.id), class: 'btn btn-primary mb-4', method: :post).to_s.html_safe
      # rubocop:enable Metrics/LineLength
    end
  end
end
