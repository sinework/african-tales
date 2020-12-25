module ApplicationHelper
    def signed_in_only!
        redirect_to new_user_session_path unless current_user
      end
end
