module ApplicationHelper

  # if there is a problem showing only log in button use () +
  def user_authenticate_button
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
      ('<br>'.html_safe) +
      (link_to 'Log In', new_user_session_path)

    else
      link_to 'Log out', destroy_user_session_path, method: :delete
    end
  end
end
