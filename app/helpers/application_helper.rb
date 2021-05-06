module ApplicationHelper
  def show_registration(event)
    if event.event_users.exists?(user_id: current_user.id)
      '<h5>Already signed in</h5>'.html_safe
    else
      (link_to 'Join', join_event_users_path(id: @event.id), method: :post).to_s.html_safe
    end
  end
  def create_event_link
    return unless current_user

    (link_to 'Create new event', new_event_path).to_s.html_safe
  end

  def display_name(event)
    if signed_in?
      "<h4>Created by #{event.creator.name}</h4>".html_safe
    else
      '<h4>Created by Anonymous</h4>'.html_safe
    end
  end

  def user_signs(user)
    if signed_in?
      "Signed in as [ #{link_to current_user.name, user_path(current_user)} ]
        #{link_to 'Sign out', destroy_user_session_path, method: :delete}
      ".html_safe
    else
      "#{link_to 'Sign in', new_user_session_path}".html_safe + " " + "#{link_to 'Sign up', new_user_registration_path}".html_safe
    end
  end
end
